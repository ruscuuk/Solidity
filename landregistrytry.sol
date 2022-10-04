//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Land {
    struct Landreg {
    uint area ;
    string location ;
    string addr ;
    address owner ;
    bool verificationStatus ;
}
Landreg[] public lands;
function createLand(uint area, string memory location, string memory addr, address owner) public {
    
    Landreg memory newLand = Landreg({
    area : area ,
    location : location ,
    addr : addr ,
    owner : owner,
    verificationStatus : false
});
lands.push(newLand);
}

function verifyLand(Landreg memory land) private view returns(string){
    require(land.verificationStatus == true);
    return "land is verified" ;
}


function updateland(Landreg memory land , uint area, string memory location, string memory addr, address
owner, bool vs) private {
    
    land.location = location ;
    land.area = area ;
    land.owner = owner ;
    land.addr = addr ;
    land.verificationStatus = vs;
 }
}

