class Preventer {
  String imagePreventPath;
  String image_PreventDescription;
  String image_Requirement;
  String image_requirementDescription;
  Preventer(
      {this.imagePreventPath,
      this.image_PreventDescription,
      this.image_Requirement,
      this.image_requirementDescription});
}

class PreventData {
  List<Preventer> preventListData = [
    Preventer(
      imagePreventPath: "images/prevention/SocialDistance2.png",
      image_PreventDescription: "2m Social Distancing",
      image_Requirement: "images/prevention/Requirements/gloves.png",
      image_requirementDescription: "Gloves",
    ),
    Preventer(
      imagePreventPath: "images/prevention/Handwashing.png",
      image_PreventDescription: "Wash your hands frequently ",
      image_Requirement: "images/prevention/Requirements/Mask.png",
      image_requirementDescription: "Mask",
    ),
    Preventer(
      imagePreventPath: "images/3600338.jpg",
      image_PreventDescription: "Use nose mask",
      image_Requirement: "images/prevention/Requirements/sanitizer.png",
      image_requirementDescription: "Hand\nSanitizer",
    ),
    Preventer(
      imagePreventPath: "images/prevention/SocialDistance.png",
      image_PreventDescription: "Avoid Outdoor",
      image_Requirement: "images/prevention/Requirements/Soap.png",
      image_requirementDescription: "Soap",
    ),
  ];
}
