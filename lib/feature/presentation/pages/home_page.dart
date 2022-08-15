import 'package:flutter/material.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';
import 'package:group_chat/feature/presentation/pages/group_page.dart';
import 'package:group_chat/feature/presentation/pages/profile_page.dart';
import 'package:group_chat/feature/presentation/pages/user_page.dart';
import 'package:group_chat/feature/presentation/widgets/custom_tool_bar_widget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_widget_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  PageController _pageViewController = PageController(initialPage: 0);
  bool _isSearch = false;
  int _toolBarPageIndex = 0;

  List<String> _popupMenuList = ['Logout', 'Settings', 'menu'];
  List<Widget> get pages => [GroupPage(), UserPage(), ProfilePage()];
  @override
  void dispose() {
    _searchController.dispose();
    _pageViewController.dispose();
    super.dispose();
  }

  Widget _buildSerchWidget() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 40,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.3),
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(0, 0.50)),
      ]),
      child: TextfieldWidgetContainer(
        prefixIcon: Icons.arrow_back,
        hintText: "Search ...",
        keyboardType: TextInputType.text,
        controller: _searchController,
        borderRadius: 0.0,
        color: Colors.white,
        iconClickEvent: () {
          setState(() {
            _isSearch = !_isSearch;
          });
        },
      ),
    );
  }

  Widget _emptyContainer() {
    return Container(
      height: 0,
      width: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: _isSearch == true ? Colors.transparent : primaryColor,
        title:
            _isSearch == true ? _emptyContainer() : Text("${AppConst.appName}"),
        flexibleSpace:
            _isSearch == true ? _buildSerchWidget() : _emptyContainer(),
        actions: _isSearch == true
            ? []
            : [
                InkWell(
                    onTap: (() {
                      setState(() {
                        _isSearch = !_isSearch;
                      });
                    }),
                    child: Icon(Icons.search)),
                PopupMenuButton(
                    itemBuilder: (_) => _popupMenuList.map((menuItem) {
                          return PopupMenuItem(
                            child: Text('$menuItem'),
                          );
                        }).toList())
              ],
      ),
      body: Column(
        children: [
         _isSearch==true?_emptyContainer(): CustomToolBarWidget(
            pageIndex: _toolBarPageIndex,
            toolBarIndexController: (int index) {
              print('current Page index $index');
              setState(() {
                _toolBarPageIndex = index;
              });
              _pageViewController.jumpToPage(index);
            },
          ),
          Expanded(
            child: PageView.builder(
                controller: _pageViewController,
                onPageChanged: (index) {
                  setState(() {
                    _toolBarPageIndex = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                }),
          )
        ],
      ),
    );
  }
}
