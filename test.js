class User {
  constructor(firstName, lastName, phone, bankAccountStatus = 'Bank Account is Low'){
    this.firstName = firstName;
    this.lastName = lastName;
    this.phone = phone;
    this.bankAccountStatus = bankAccountStatus;
  }
}

class MemberStatus extends User {
  constructor(firstName, lastName, phone, bankAccountStatus, vipStatus){
    super(firstName, lastName, phone, bankAccountStatus);
    this.vipStatus = vipStatus;
  }
}

let john = new MemberStatus('John', 'Doe', '555-123-4567', 'Bank Account is Wealthy', 'Gold');
console.log(john);