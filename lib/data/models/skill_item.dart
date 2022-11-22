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
      skill:
          map["properties"]["Skill"]?["title"]?[0]?["plain_text"] ?? "no name",
      category:
          map["properties"]["Category"]?["select"]?["name"] ?? "no category",
      proficiency: map["properties"]["Proficiency"]?["number"] ?? 0,
      description: map["properties"]["Description"]?["rich_text"]?[0]
              ?["plain_text"] ??
          "no description",
      experience: map["properties"]["Experience"]?["rich_text"]?[0]
              ?["plain_text"] ??
          "no experience",
    );
  }
}
