import 'package:flutter/material.dart';
import 'package:todo/routes/myAppRoutes.dart';
import 'package:todo/screens/ContactDetailsScreen.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List? users;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 8.0 / 10.0,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        var nameObj = users![index]["name"];
        var addObj = users![index]["location"];
        String name =
            nameObj["title"] + " " + nameObj["first"] + nameObj["last"];
        String email = users![index]["email"];
        String address = addObj["state"] + ", " + addObj["country"];
        String phone = users![index]["phone"];

        return Card(
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactDetailsScreen(
                          name: name,
                          email: email,
                          img: users![index]["picture"]["large"],
                          address: address,
                          phone: phone,
                        ),
                      ),
                    );
                  },
                  child: Image.network(
                    users![index]["picture"]["large"],
                    fit: BoxFit.contain,
                  ),
                )),
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  email,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
                Text(
                  phone,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  address,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ));
      },
      itemCount: users?.length ?? 0,
    );
  }
}
