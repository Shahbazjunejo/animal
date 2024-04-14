class complaint_model{
  String typeOfAnimal;
  String region;
  String streetNumber;
  String description;

  complaint_model({
    required this.typeOfAnimal,
    required this.region,
    required this.streetNumber,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'type_of_animal': typeOfAnimal,
      'region': region,
      'Street_num': streetNumber,
      'Description_the_problem': description,
    };
}

}