import 'package:flutter/material.dart';
import 'package:first_task/room_item.dart';
import 'package:first_task/rooms.dart';

class RoomListStatefulWidget extends StatefulWidget {
  const RoomListStatefulWidget({Key? key}) : super(key: key);

  @override
  State<RoomListStatefulWidget> createState() => RoomList();
}

class RoomList extends State<RoomListStatefulWidget> {
  List<Rooms> room = [
    Rooms('single room', 'a room for one person',
        'https://cdn.discordapp.com/attachments/993237828072915015/1013778371496394763/unknown.png'),
    Rooms('double room', 'a room for two person',
        'https://www.italianbark.com/wp-content/uploads/2018/01/hotel-room-design-trends-italianbark-interior-design-blog.jpg'),
    Rooms('vip room', 'a room for vip person',
        'https://www.cgarchitect.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBc0paIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0b6487b64124d0d6e50224370bfcbdea1484cc8f/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQWxZRk1Eb0tjMkYyWlhKN0Jqb01jWFZoYkdsMGVXbGsiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a140f81341e053a34b77dbf5e04e777cacb11aff/b8d6af25.jpg'),
    Rooms('extra room', 'a room for extra person',
        'https://inkhotels.com/melbourne-southbank/wp-content/uploads/sites/4/2019/11/the-extra-2.jpg'),
    Rooms('king room', 'a room for king person',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn9ohTg9Lt4snUzyaVrgtiklDHg96VYNUV9w&usqp=CAU'),
    Rooms('family room', 'a room for family',
        'https://cdn.discordapp.com/attachments/993237828072915015/1013778163186274435/unknown.png')
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Room List'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
            physics: BouncingScrollPhysics(),
            children: room.map((i) => InkWell(
              splashColor: Colors.lightBlueAccent,
              onTap: () {
                Rooms roomItem = i;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RoomItem(roomItem)));
              },
              child: Card(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network(i.roomsPhoto, height: 80),
                            Text(
                              i.rooms,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      Text(
                        i.roomsDetails,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),).toList()


        ),
      ),
    );
  }
}