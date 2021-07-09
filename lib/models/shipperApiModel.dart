class ShipperDetailsModel {
  String? shipperId;
  double? phoneNo;
  String? shipperName;
  String? companyName;
  String? shipperLocation;
  bool? companyApproved;
  bool? accountVerificationInProgress;

  ShipperDetailsModel(
      {this.shipperId,
      this.phoneNo,
      this.shipperName,
      this.companyName,
      this.shipperLocation,
      this.companyApproved,
      this.accountVerificationInProgress});
}
