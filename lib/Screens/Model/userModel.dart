//
// class TaxData {
//   String? name;
//   int? vAT;
//   int? serviceTax;
//   String? status;
//   String? createdBy;
//   String? updatedBy;
//   String? createdTime;
//   String? updatedTime;
//   int? iV;
//
//   TaxData(
//       {this.sId,
//         this.vAT,
//         this.serviceTax,
//         this.status,
//         this.createdBy,
//         this.updatedBy,
//         this.createdTime,
//         this.updatedTime,
//         this.iV});
//
//   TaxData.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     vAT = json['VAT'];
//     serviceTax = json['serviceTax'];
//     status = json['status'];
//     createdBy = json['createdBy'];
//     updatedBy = json['updatedBy'];
//     createdTime = json['createdTime'];
//     updatedTime = json['updatedTime'];
//     iV = json['__v'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['VAT'] = this.vAT;
//     data['serviceTax'] = this.serviceTax;
//     data['status'] = this.status;
//     data['createdBy'] = this.createdBy;
//     data['updatedBy'] = this.updatedBy;
//     data['createdTime'] = this.createdTime;
//     data['updatedTime'] = this.updatedTime;
//     data['__v'] = this.iV;
//     return data;
//   }
// }