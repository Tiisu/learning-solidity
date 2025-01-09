// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Twitter {

    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping (address => Tweet[]) public tweets;

    function createTweet(string memory _tweet) public { 
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0

        });
        tweets[msg.sender].push(newTweet);
    }

    function getTweets(address _owner, uint _i) public view returns (Tweet memory) {
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner ) public  view returns (Tweet[] memory) {
        return tweets[_owner];
    }

}