
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_contact_book/contact_details_view.dart';
import 'package:my_contact_book/contact_model.dart';

class HomeView extends StatelessWidget {
  HomeView({ Key? key }) : super(key: key);

  final ScrollController _scrollController = ScrollController();
  final List <Map <String, String>> data =[
	{
		"name": "Hasad Luna",
		"phone": "267-1172",
		"email": "sem@protonmail.edu",
		"country": "Canada",
		"region": "Bolívar",
    "picture": "https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Jaden Miller",
		"phone": "1-987-844-8561",
		"email": "faucibus.id@hotmail.net",
		"country": "Germany",
		"region": "Noord Brabant",
    "picture": "https://images.unsplash.com/photo-1625042876490-9c248fed24c2?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Adena Suarez",
		"phone": "875-5151",
		"email": "pharetra.quisque@protonmail.com",
		"country": "India",
		"region": "Louisiana",
    "picture": "https://images.unsplash.com/photo-1601763105589-e62599289cfc?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Hammett Barrett",
		"phone": "621-8964",
		"email": "libero@hotmail.couk",
		"country": "Austria",
		"region": "Northwest Territories",
    "picture": "https://images.unsplash.com/photo-1631834351708-c81012e14b47?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Gray Fox",
		"phone": "827-5587",
		"email": "interdum.enim.non@hotmail.couk",
		"country": "Russian Federation",
		"region": "Franche-Comté",
    "picture": "https://images.unsplash.com/photo-1626948683742-5dd3ebcfa578?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
  {
		"name": "Gwendolyn Roach",
		"phone": "968-1325",
		"email": "mauris.eu@outlook.couk",
		"country": "Mexico",
		"region": "Molise",
    "picture": "https://images.unsplash.com/photo-1631799156828-99998235b04d?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Yen Miranda",
		"phone": "1-737-865-8374",
		"email": "suspendisse.aliquet@outlook.com",
		"country": "Brazil",
		"region": "Odisha",
    "picture": "https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw1MHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Jolie Reese",
		"phone": "598-8934",
		"email": "aliquet@outlook.couk",
		"country": "United Kingdom",
		"region": "South Island",
    "picture": "https://images.unsplash.com/photo-1624281549236-111ac9c8fd73?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2N3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Hasad Bernard",
		"phone": "1-637-767-1326",
		"email": "sapien.molestie@google.ca",
		"country": "Austria",
		"region": "Hà Nam",
    "picture": "https://images.unsplash.com/photo-1631681018480-b2d2d5132eb1?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	},
	{
		"name": "Guinevere Mckinney",
		"phone": "1-480-157-0368",
		"email": "rutrum.lorem.ac@icloud.net",
		"country": "Vietnam",
		"region": "Australian Capital Territory",
    "picture": "https://images.unsplash.com/photo-1631809290466-e57f6449d1fc?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3Mnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"
	}
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text ('My Contacts',
        style: TextStyle(fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    actions: const [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: CircleAvatar(radius: 30,
          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),),
        ),
      )
    ],
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70), 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
            child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Search by name or number',
                prefixIcon: Icon(Icons.search),

            ),
          ) ),
      ),
    ),
    body: SafeArea(
      child: ListView(
        controller: _scrollController,
        children:  [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: const Text('Recent',
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.w600),),
          ),
           ListView.separated(
             controller: _scrollController,
             shrinkWrap: true,
             itemBuilder: (context,index){
               return  ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context){
                     return ContactDetailsView(
                       contact: Contact(name: "Salim Hafiz", 
                       phone: '+234 898 000 222', 
                       email: 'salimhafiz@getme.com', 
                       country: 'Ghana', 
                       region: 'Oti Region',
                       picture: 'https://images.unsplash.com/photo-1631785641419-eef018e28ef9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'));
                   }));
                   },
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1631785641419-eef018e28ef9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
                ),
              title: Text(
                'Salim Hafiz',
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.w400),),
              subtitle: Text('+431-384-980-500'),
              trailing: IconButton(
                onPressed: null, 
                icon: Icon(Icons.more_horiz)),
            );
             }, 
             separatorBuilder: (context,index){
               return const Divider(
              indent: 25,
              thickness: 2,
              endIndent: 25,
               );
             }, 
             itemCount: 3), 
             const SizedBox(
               height: 15),
             Padding(
               padding: const EdgeInsets.only(left: 12.0),
               child: const Text('Contacts',
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w600
               ),),
             ),
          GroupedListView<Map<String,String>, String>(
            shrinkWrap: true,
      elements: data,
      groupBy: (element) => element[
        'name'].toString().substring(0,1),
      groupSeparatorBuilder: (
        String groupByValue) => 
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(groupByValue.substring(0,1), 
          textAlign: TextAlign.right, 
          style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600
          ),),
        ),
      ),
      itemBuilder: (context, Map<String,String> element) {
        Contact contact = Contact.fromJson(element);
        return Column(
        children: [
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder:(context){
          return  ContactDetailsView(contact: contact,);
               }));
             },
                  leading:  CircleAvatar(
                    backgroundImage: NetworkImage('${element['picture']}'
                    ),),
                  title: Text(
                    '${element['name']}',
                  style: const TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w400),),
                  subtitle: Text(
                    '${element['phone']}'),
                  trailing: IconButton(
                    onPressed: null, 
                    icon: Icon(Icons.more_horiz)),),
                    const Divider(
              indent: 25,
              thickness: 2,
              endIndent: 25,
                    )],
      );
      },
      itemComparator: (item1, item2) => item1['name']!.compareTo(item2['name']!), // optional
      useStickyGroupSeparators: true, // optional
      floatingHeader: true, // optional
      order: GroupedListOrder.ASC, // optional
      ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: const Color(0xff1A4ADA),
      onPressed: (){},
        child:  Icon(
          Icons.add
          ),), 
        );
  }
}