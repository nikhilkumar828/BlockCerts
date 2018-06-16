pragma solidity ^0.4.4;



contract blockCerts{
  address public owner;
  
  struct student{
      address stu;
      string sname;
      string [] ipfs;
  }
  
  student [] public  st;
  mapping(address => student) public stucert;
  

 function giveCert(address _p,string _name,string url) public{
  
   stucert[_p].stu=_p;
   stucert[_p].sname=_name;
   stucert[_p].ipfs.push(url);
   
  }
  
 function blockCerts() public {
    owner = msg.sender;
  }
  
  function getnumberofstudcerts(address _st) view public returns (uint) {
        return  stucert[_st].ipfs.length;
    }
    

  function getCerts(address _p,uint _no)public returns (string){
   
   
   return (stucert[_p].ipfs[_no]);
 
  }
  
}

