import 'package:flutter/material.dart';
import 'package:hungry_me/constant.dart';
import 'package:hungry_me/item_detail_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;
  int selectedCategoryIndex = 0;

  List<IconData> pages = [
    Icons.home_outlined,
    Icons.chat_bubble_outline,
    Icons.shopping_cart_outlined,
    Icons.person_outline,
  ];

  List<String> itemList = [
    'Burger',
    'Pizza',
    'Dumplings',
    'Ramen',
    'Sandwich',
    'Pasta',
  ];

  List<String> itemImageList = [
    'assets/burger2.jpg',
    'assets/burger4.jpg',
    'assets/burger3.jpg',
    'assets/burger.jpg',
    'assets/burger2.jpg',
    'assets/burger4.jpg',
    'assets/burger3.jpg',
    'assets/burger.jpg',
    'assets/burger2.jpg',
    'assets/burger4.jpg',
    'assets/burger3.jpg',
    'assets/burger.jpg',
  ];

  List<String> itemNameList = [
    'Crispy Chicken Burger',
    'Veg Burger',
    'Ham Burger',
    'Beef Burger',
    'Crispy Chicken Burger',
    'Veg Burger',
    'Ham Burger',
    'Beef Burger',
    'Crispy Chicken Burger',
    'Veg Burger',
    'Ham Burger',
    'Beef Burger',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffeffc6),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: const Color(0xffea3636),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          ...List.generate(
            pages.length,
            (index) => BottomNavigationBarItem(
              icon: Column(
                children: <Widget>[
                  Icon(
                    pages[index],
                    size: 24,
                  ),
                  if (selectedIndex == index) ...[
                    const SizedBox(height: 4),
                    const CircleAvatar(
                      radius: 2,
                    )
                  ]
                ],
              ),
              label: '',
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      fillColor: const Color(0xffea3636),
                      filled: true,
                      border: dropdownBorder,
                      focusedBorder: dropdownBorder,
                      enabledBorder: dropdownBorder,
                    ),
                    icon: const Icon(
                      Icons.expand_circle_down_outlined,
                      color: Colors.white,
                    ),
                    value: 1,
                    selectedItemBuilder: (context) => [
                      const Text(
                        'Sydney, Australia',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                    items: [
                      ...List.generate(
                        4,
                        (index) => DropdownMenuItem(
                          value: index + 1,
                          child: const Text(
                            'Sydney, Australia',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      )
                    ],
                    onChanged: (index) {},
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 55,
                  width: 55,
                  // padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xffea3636),
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1517849845537-4d257902454a?q=80&w=3024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16),
                      hintText: 'Search',
                      border: border,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border,
                      errorBorder: errorBorder,
                      focusedErrorBorder: errorBorder,
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                    ),
                    textInputAction: TextInputAction.search,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xffea3636),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.sort_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 40,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: itemList.length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedCategoryIndex = index;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    decoration: BoxDecoration(
                      color: index == selectedCategoryIndex
                          ? const Color(0xffea3636)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      itemList[index],
                      style: TextStyle(
                        color: index == selectedCategoryIndex
                            ? Colors.white
                            : const Color(0xff6a6a6a),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.85,
              ),
              itemCount: itemImageList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ItemDetailPage(
                          title: itemNameList[index],
                          image: itemImageList[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(1, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              itemImageList[index],
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          itemNameList[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffff9633),
                                ),
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite_outline,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
