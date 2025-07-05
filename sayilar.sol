// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // solidity versyonu seçme
                                                  //writed by Elektrodeli 
contract ilksozlesme {


uint256 public favorisayim = 56  ;

// struct tutucağımız verileri listeleme yarıyo
struct kisi{ 
   string isim ;
   uint256 favorisayisi ;
   }

kisi[] public insanlarinlistesi ;//[]=0 yani boştur

//mappig sözlük gibidir aradığın şeyi buldurur
mapping (string => uint256) public isimdensayiya ;


 function magza(uint256 favorisayi2) public{
  favorisayim = favorisayi2 ;
 }
 
 function gericagir() public view  returns(uint256) {
  return favorisayim+1;
 }

function kisiekle (string memory _isim, uint256 _favorisayi) public {
insanlarinlistesi.push( kisi(_isim,_favorisayi) );
isimdensayiya[_isim] = _favorisayi;
}
}