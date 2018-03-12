function Dto(id, type, name, price, location, single, delivery, portion, phone, address, imgFile){
  this.id = id;
  this.type = type;
  this.name = name;
  this.price = price;
  this.location = location;
  this.single = single;
  this.delivery = delivery;
  this.portion = portion;
  this.phone = phone;
  this.address = address;
  this.imgFile = imgFile;

  this.toString = function () {
     return "[" +this.id + ", " + this.type + ", " + this.name + ", " + this.price + ", " + this.location + ", " +
              this.single + ", " + this.delivery + ", " + this.portion + ", " + this.phone + ", " + this.address + ", " + this.imgFile + "]";
  }

  this.ItoString = function (){
	  return ""+ this.id;
  }
}
