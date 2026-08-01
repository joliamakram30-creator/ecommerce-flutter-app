import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(radius: 30, child: Icon(Icons.person, size: 35)),
                  SizedBox(height: 10),
                  Text(
                    "Welcome",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text("Shop"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Wishlist"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Cart"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        iconTheme: const IconThemeData(color: Colors.black),

        title: const Text(
          "Verve",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryButton("All", true),
                  const SizedBox(width: 10),
                  categoryButton("Deals", false),
                  const SizedBox(width: 10),
                  categoryButton("Clothes", false),
                  const SizedBox(width: 10),
                  categoryButton("Shoes", false),
                  const SizedBox(width: 10),
                  categoryButton("Beauty", false),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage("assets/images/photo_6007880449734152063_y.jpg"),
                  fit: BoxFit.cover,
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Text(
                      "Hot Drops",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Must have sneakers",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),

                    const SizedBox(height: 12),

                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),

                      child: const Text("Find Out"),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                const Text(
                  "Best Sellers",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                TextButton(onPressed: () {}, child: const Text("See all")),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: .68,

                children: [
                  productCard(
                    image:
                        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800",
                    title: "Nike Air Max",
                    price: "\$180",
                    discount: "-20%",
                  ),

                  productCard(
                    image:
                        "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=800",
                    title: "Running Shoes",
                    price: "\$220",
                    discount: "-15%",
                  ),

                  productCard(
                    image:
                        "https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=800",
                    title: "Black Glasses",
                    price: "\$120",
                    discount: "-10%",
                  ),

                  productCard(
                    image: "assets//photo_6007880449734152063_y.jpg",
                    title: "Special Edition",
                    price: "\$300",
                    discount: "-30%",
                    asset: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productCard({
    required String image,
    required String title,
    required String price,
    required String discount,
    bool asset = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),

                  child: SizedBox(
                    width: double.infinity,

                    child: asset
                        ? Image.asset(image, fit: BoxFit.cover)
                        : Image.network(image, fit: BoxFit.cover),
                  ),
                ),

                Positioned(
                  left: 10,
                  top: 10,

                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Text(
                      discount,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const Positioned(
                  right: 10,
                  top: 10,

                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.favorite_border, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryButton(String title, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      alignment: Alignment.center,

      decoration: BoxDecoration(
        color: selected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black),
      ),

      child: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
