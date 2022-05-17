//SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.7.3;

contract HelloWorld {
    //events
    //states - variables, tokens, NFTs
    //functions - used to change the state of variables

    event messagechanged(string oldmsg, string newmsg);

    string public message;

    constructor(string memory firstmessage){
        message = firstmessage;
    }

    function update(string memory newmessage) public {
        string memory oldmsg = message;
        message = newmessage;

        emit messagechanged(oldmsg, newmessage);
    }
}