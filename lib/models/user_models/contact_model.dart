// Created by: Christo Pananjickal, Created at: 29-04-2024 09:27 pm

class ContactModel {
  final String emailId;
  final String phone;
  final String address;
  final String postalCode;

  ContactModel({
    required this.emailId,
    required this.phone,
    required this.address,
    required this.postalCode,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        emailId: json['email_id'] ?? '',
        phone: json['phone'] ?? '',
        address: json['address'] ?? '',
        postalCode: json['postal_code'] ?? '',
      );
}
