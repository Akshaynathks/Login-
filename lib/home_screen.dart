import 'package:flutter/material.dart';
import 'package:login_app/dummypage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class User{
  final String name;
  final String images;
  final String subtitle;

  User(
    this.name,
    this.images,
    this.subtitle,
  );

  void remove(User user) {}
}


List<User> userList = [
  User("Olivia Davis", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Software Engineer"),
  User("Travis Scott","https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa" , "Graphic Designer"),
  User("Michael Johnson", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Product Manager"),
  User("Emily Williams", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Data Analyst"),
  User("Robert Brown", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "UI/UX Designer"),
  User("Sophia Miller", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Marketing Specialist"),
  User("William Davis", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Frontend Developer"),
  User("Olivia Wilson", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Content Writer"),
  User("James Jones", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Project Manager"),
  User("Emma Taylor", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Business Analyst"),
  User("John Doe", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Software Engineer"),
  User("Jane Smith", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Graphic Designer"),
  User("Michael Johnson", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Product Manager"),
  User("Emily Williams", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Data Analyst"),
  User("Robert Brown", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "UI/UX Designer"),
  User("Sophia Miller", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Marketing Specialist"),
  User("William Davis", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Frontend Developer"),
  User("Olivia Wilson", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Content Writer"),
  User("James Jones", "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1692350892~exp=1692351492~hmac=9d2153fb5018307e4894b979f53fff9a34c05e34f5495063db0174eae2b7fcaa", "Project Manager"),
  User("Emma Taylor", "https://img.freepik.com/free-psd/3d-illustration-person-with-long-hair_23-2149436197.jpg?w=740&t=st=1692361429~exp=1692362029~hmac=305e1b9abfd69bf0fe185160ef1492992ba31f0f9c238f0e9c45c6f284355152", "Business Analyst"),
];


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _showImageDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            onPressed: () {
              showLogoutConfirmationDialog(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return EachUsers(
                      name: userList[index].name,
                      profilepic: userList[index].images,
                    );
                  },
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                userList[index].images,
              ),
            ),
            title: Text(userList[index].name),
            subtitle: Text(userList[index].subtitle),
            trailing: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('10.00'),
                  IconButton(
                    onPressed: () {
                      showDeleteConfirmationDialog(context, userList[index]);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                signout(context);
              },
              child: const Text("Log Out"),
            ),
          ],
        );
      },
    );
  }

  void showDeleteConfirmationDialog(BuildContext context, User user) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete User"),
          content: Text("Are you sure you want to delete ${user.name}?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  deleteUser(user);
                Navigator.of(context).pop();
                });
                
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  void deleteUser(User user) {
    userList.remove(user);

  }

  void signout(BuildContext ctx) async {
    final _sharedPref = await SharedPreferences.getInstance();
    await _sharedPref.clear();
    Navigator.pushNamedAndRemoveUntil(ctx, "login", (route) => false);
    ScaffoldMessenger.of(ctx)
        .showSnackBar(SnackBar(content: Text("Logged Out Successfully")));
  }
}
