// import 'package:CreativeWork2/model/mysignin.dart';
// import 'package:flutter/material.dart';

// class FavoritesScreen extends StatefulWidget {
//   static const routeName = '/favortiesScreen';
//   @override
//   State<StatefulWidget> createState() {
//     return _FavoritesState();
//   }
// }

// class _FavoritesState extends State<FavoritesScreen> {
//   _Controller con;
//   UserRecord userRecord;
//   UserRecord userRecordOriginal;
//   bool editMode = false;
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     con = _Controller(this);
//   }

//   void render(fn) {
//     setState(fn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     userRecordOriginal ??= ModalRoute.of(context).settings.arguments;
//     userRecord ??= UserRecord.clone(userRecordOriginal);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         actions: [
//           editMode
//               ? IconButton(icon: Icon(Icons.check), onPressed: () {})
//               : IconButton(icon: Icon(Icons.edit), onPressed: con.edit),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Form(
//           key: formKey,
//           child: SingleChildScrollView(
//             child: Column(children: [
//               Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Text(
//                       'Name',
//                       style: Theme.of(context).textTheme.headline6,
//                     ),
//                   ),
//                   Expanded(
//                     flex: 4,
//                     child: TextFormField(
//                       enabled: editMode,
//                       initialValue: userRecord.name,
//                       onSaved: con.saveName,
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Text(
//                       'Phone',
//                       style: Theme.of(context).textTheme.headline6,
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Text(
//                       'Age',
//                       style: Theme.of(context).textTheme.headline6,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   Text(
//                     'Major',
//                     style: Theme.of(context).textTheme.headline6,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.pink[50],
//                       border: Border.all(
//                         color: Colors.blue[800],
//                         width: 3.0,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   Text(
//                     'Language Proficiency',
//                     style: Theme.of(context).textTheme.headline6,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.teal[50],
//                       border: Border.all(
//                         color: Colors.blue[800],
//                         width: 3.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _Controller {
//   _FavoritesState state;
//   _Controller(this.state);

//   void edit() {
//     state.render(() => state.editMode = true);
//   }

//   void saveName(String value) {
//     state.userRecord.name = value;
//   }

// void saveAge(String value) {
//   state.userRecord.age = int.parse(value);
// }

// List getMajorRadioTiles(bool editMode) {
//   return Major.values
//       .map((m) => RadioListTile(
//             title: Text(m.toString().split('.')[1]),
//             dense: true,
//             value: m,
//             groupValue: state.userRecord.major,
//             onChanged: editMode
//                 ? (Major value) {
//                     state.render(() => state.userRecord.major = value);
//                   }
//                 : null,
//           ))
//       .toList();
// }

//}
