import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Cảng HKQT Đà Nẵng',
      ),
    ));

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation Menu",
            onPressed: null,
          ),
          title: Center(
            child: Text("Cảng HKQT Đà Nẵng"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: "Alert",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _ThongBaoChuyenBay(),
                  ),
                );
              },
            )
          ],
          bottom: TabBar(
            tabs: [
              // Dùng để quét mã vạch
              Tab(
                text: 'Tìm kiếm',
                icon: Icon(Icons.camera_alt),
              ),
              //Dùng để hiển thị thông tin chuyến bay
              Tab(
                text: 'Thông tin',
                icon: Icon(Icons.airplay),
              ),
              //Dùng để hiển thị lịch bay
              Tab(
                text: 'Lịch bay',
                icon: Icon(Icons.airplanemode_active),
              ),
              //Dùng để hiển thị thông tin khác
              Tab(
                text: 'Khác',
                icon: Icon(Icons.directions_bus),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Dùng để quét mã vạch
            new Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Tìm kiếm thông tin chuyến bay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          //padding: const EdgeInsets.all(8.0),
                          textColor: Colors.white,
                          color: Theme.of(context).primaryColor,
                          onPressed: null,
                          child: Text("Tìm theo code vé"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          //padding: const EdgeInsets.all(8.0),
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _TimThongTinChuyenBay(),
                              ),
                            );
                          },
                          child: Text("Tìm theo chuyến bay"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Dùng để hiển thị thông tin chuyến bay
            new Scaffold(
              body: Center(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Họ và tên:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Dữ liệu từ sever",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Chuyến bay:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Dữ liệu từ sever",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Ngày bay:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Dữ liệu từ sever",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Số ghế:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Dữ liệu từ sever",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Giờ khởi hành:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Dữ liệu từ sever",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Cửa khởi hành:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Dữ liệu từ sever",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Ghi chú:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Dữ liệu từ sever",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Dùng để hiển thị lịch bay
            new Column(
              children: <Widget>[
                new Text("Hiển thị lịch bay"),
                new Text("Hiển thị lịch bay 1")
              ],
            ),
            //Dùng để hiển thị thông tin khác
            new Column(
              children: <Widget>[
                new Text(
                  "Hiển thị thông tin khác",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TimThongTinChuyenBay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tìm kiếm Thông tin"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              maxLength: 6,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.airplanemode_active),
                  helperText: "VN1234",
                  border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Theme.of(context).primaryColor,
                  onPressed: null,
                  child: Text("Tìm kiếm"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ThongBaoChuyenBay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông báo"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              maxLength: 6,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.airplanemode_active),
                  helperText: "VN1234",
                  border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Theme.of(context).primaryColor,
                  onPressed: null,
                  child: Text("Tìm kiếm"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
