pragma solidity ^0.5.8; //declaration 

contract Election 
{
	struct Candidate
	{
		uint id;
		string name;
		uint voteCount;
	}
	//assosciative array
	mapping(uint => Candidate) public candidates;
	 
	 uint public candidatesCount;

	constructor () public
	{
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");	
	}
	//By use of private : others won't be able to add candidate of election in or contract 
	function addCandidate(string _name) private 
	{
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount,_name, 0);
	}
	
} 
