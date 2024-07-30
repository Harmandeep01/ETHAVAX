// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Grades {

    event remarks(string log);

    string public Grade = "No Grades yet!";

    function gradeCalculate(uint256 totalMarks) public returns(string memory){
        require(totalMarks > 0 && totalMarks <=100, "Please enter the marks between 1-100");
        if(totalMarks <=32){
            Grade = "fail! Beter Luck";
            return Grade;
        } 
       else if(totalMarks >=33  && totalMarks <=55) {
            Grade = "D";
            emit remarks("Need serious improvement");
            return Grade;
        } 
        else if(totalMarks >=56 && totalMarks <=75) {
            Grade = "C";
            emit remarks("Good, but need practice");
            return Grade;
        }
        else if(totalMarks >= 76 && totalMarks<=89){
            Grade = "B";
            emit remarks("Well done ,Keep it up");
            return Grade;
        }
        else {
            Grade = "A";
            emit remarks("Excellent, Keep Shining!!");
            return Grade;
        }

    } 
}
