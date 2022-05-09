pragma solidity ^0.5.16;
contract dblock{
    struct details{
        string name;
        uint number;
        uint date;
        uint month;
        uint year;
        uint validity;
        string UnitAddress;
        address _add;
    }
    mapping(address => details) Det;
    function registration(address _address, string memory _name, uint _number, uint _date, uint _month, uint _year, uint _validity, string memory _UnitAddress) public{
        details memory detail;
        detail._add=_address;
        detail.name = _name;
        detail.number=_number;
        detail.date=_date;
        detail.month=_month;
        detail.year=_year;
        detail.validity=_validity;
        detail.UnitAddress=_UnitAddress;
        Det[_address]=detail;
    }
    
    function Ddetails(address _address) view public returns(string memory name_, uint number_, uint date_, uint month_, uint year_, uint validity_, string memory UnitAddress_){
        details memory detail=Det[_address];
        name_=detail.name;
        number_=detail.number;
        date_=detail.date;
        month_=detail.month;
        year_=detail.year;
        validity_=detail.validity;
        UnitAddress_=detail.UnitAddress;
        return(name_,number_,date_,month_,year_,validity_,UnitAddress_);
        
    }
}
