class SkillItem {
  String skill;
  String category;
  double proficiency;
  String description;
  String experience;
  SkillItem({
    required this.skill,
    required this.category,
    required this.proficiency,
    required this.description,
    required this.experience,
  });

  factory SkillItem.fromMap(Map<String, dynamic> map) {
    return SkillItem(
      skill: map["Skill"]?["title"]?[0]?["plain_text"] ?? "no name",
      category: map["Catetory"]?["select"]?["name"] ?? "no category",
      proficiency: map["Proficient"]?["number"] ?? 0,
      description: map["Description"]?["rich_text"]?[0]?["plain_text"] ??
          "no description",
      experience:
          map["Experience"]?["rich_text"]?[0]?["plain_text"] ?? "no experience",
    );
  }
}
