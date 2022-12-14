import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
            icon: Icon(
          Icons.directions_car,
          color: Colors.black,
        )),
        Tab(
            icon: Icon(
          Icons.directions_transit,
          color: Colors.black,
        )),
      ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5,
            crossAxisCount: 4,
            mainAxisSpacing: 5,
          ),
          itemCount: 43,
          itemBuilder: (context, index){
            return Image.network("https://picsum.photos/id/${index+1}/200/200");
          },
        ),
        Container(
          color: Colors.red,
        ),
      ],
    );
  }
}
