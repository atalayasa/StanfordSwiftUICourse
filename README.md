# Getting Started
Repository for Spring 2020 version of Stanford University's course CS193p (Developing Applications for iOS using SwiftUI) 

### Required Tasks for Lecture 2
1. Get the Memorize game working as demonstrated in lectures 1 and 2. Type in all the code. Do not copy/paste from anywhere. // Done
2. Currently the cards appear in a predictable order (the matches are always side-by-side, making the game very easy). Shuffle the cards. // Done
3. Our cards are currently arranged in a single row (we’ll fix that next week). That’s making our cards really tall and skinny (especially in portrait) which doesn’t look very good. Force each card to have a width to height ratio of 2:3 (this will result in empty space above and/or below your cards, which is fine). // Done
4. Have your game start up with a random number of pairs of cards between 2 pairs and 5 pairs. // Done
5. When your game randomly shows 5 pairs, the font we are using for the emoji will be too large (in portrait) and will start to get clipped. Have the font adjust in the 5 pair case (only) to use a smaller font than .largeTitle. Continue to use .largeTitle when there are 4 or fewer pairs in the game. // Done
6. Your UI should work in portrait or landscape on any iOS device. In landscape your cards will be larger (but still 2:3 aspect ratio). This probably will not require any work on your part (that’s part of the power of SwiftUI), but be sure to experiment with running on different simulators in Xcode to be sure. // Done
