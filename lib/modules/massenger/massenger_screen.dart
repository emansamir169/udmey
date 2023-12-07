import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "chats",
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        leading: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Image(
                image:
                    NetworkImage("https://images.app.goo.gl/3AqpPQLG57Y4pSMd8"),
              ),
            ),
            CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 4.0,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            width: 0.1,
          ),
          MaterialButton(
            onPressed: () {},
            child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30.0,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.search), Text("search")],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildStoryItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15.0,
                    );
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return buildChatItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 15.0,
                  );
                },
                itemCount: 20,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // list view
  Widget buildStoryItem() {
    return Container(
      width: 40.0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 20.0,
                child: Image(
                  image: NetworkImage(
                      "https://images.app.goo.gl/3AqpPQLG57Y4pSMd8"),
                ),
              ),
              CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 4.0,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "eman samir said",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    );
  }

  Widget buildChatItem() {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Image(
                image:
                    NetworkImage("https://images.app.goo.gl/3AqpPQLG57Y4pSMd8"),
              ),
            ),
            CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 4.0,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "eman habib",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              children: [
                Text("engy alkjhgdfghjkljhgfdsfghj"),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  width: 5.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text("02:00"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
