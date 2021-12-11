
import 'package:flutter/material.dart';
import 'package:my_contact_book/contact_model.dart';



class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({ Key? key, required this.contact }) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Contact',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.more_vert),)
          ],
        ),
        body: ListView(
          children:  [
          CircleAvatar(
            backgroundImage: NetworkImage('${contact.picture}'),
            radius: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                contact.name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                  '${contact.region}, ${contact.country}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,),
            ),
        Container(
          color: Color(0xff9AADBE),
          child: Column(
            children: [
              ListTile(
                title: Text('Mobile',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),),
                subtitle: Text(
                  contact.phone,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff333333),
                ),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: (){}, 
                      child: Icon(Icons.message, color: Colors.black),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                      ),),
                      TextButton(
                      onPressed: (){}, 
                      child: Icon(Icons.call, color: Colors.black),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),),
                      ),]
                ),
              ),
              ListTile(
                title: Text('Email',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),),
                subtitle: Text(
                  contact.email,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff333333),
                ),),
                trailing: 
                    TextButton(
                      onPressed: (){}, 
                      child: Icon(Icons.email, color: Colors.black),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                      ),),
                ),
              ListTile(
                title: Text('Group',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),),
                subtitle: Text('Uni Friends',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff333333),
                ),),
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Account Linked',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),),
        ),
        Container(
          color: Color(0xff9AADBE),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Telegram',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),),
                trailing: 
                Image.asset('assets/telegram.png'),  
              ),
              ListTile(
                title: Text(
                  'WhatsApp',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),),
                 trailing: Image.asset('assets/whatsapp.png'), 
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('More Options',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
        ),
        Container(
          color: Color(0xff9AADBE),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Share Contact',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),),
                  
              ),
              ListTile(
                title: Text(
                  'QR Code',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),),
                  
              ),
        ],),
    ),],
        )
    );   
  }
}