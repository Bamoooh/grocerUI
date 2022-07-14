import 'familyMember.dart';
class Family {
  Family({id, name});
  int id =0 ;
  String name = '';

  List getMembers(){
    return [
      FamilyMember(familyId: 0, name: 'bam'),
      FamilyMember(familyId: 0, name: 'asd'),
      FamilyMember(familyId: 0, name: 'xd'),
    ];
  }
}
