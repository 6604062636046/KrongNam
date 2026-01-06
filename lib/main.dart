import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'เครื่องกรองน้ำ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 168, 240, 86)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'เครื่องกรองน้ำ มจพ.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      color: Colors.white,
                      child: Image.network(
                        'https://www.baankrongnam.com/uploads/products/5/510/5ef163e5cf18d6b562d236a1a25a7b77.jpg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'เครื่องกรองน้ำ Filter ...',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Row(
                              children: const [
                                Text('4.5', style: TextStyle(color: Colors.grey)),
                                Icon(Icons.star, size: 16, color: Colors.grey),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'กรองน้ำแบบ 3 ท่อ 5 L/min ส...',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
          Card(
            margin: const EdgeInsets.all(16),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  'https://www.baankrongnam.com/uploads/products/5/510/ef61053c3195420e0ed1439f427c7e03.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'เครื่องกรองน้ำ Water Filter RO-01',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: const [
                              Text('4.5', style: TextStyle(color: Colors.grey)),
                              Icon(Icons.star, size: 16, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'เครื่องกรองน้ำดื่มแบบ RO-01 ปริมาณ 15 L/min สำหรับใช้ในบ้าน',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(height: 20),
            
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                foregroundColor: Colors.black87,
                                elevation: 0,
                                shape: const StadiumBorder(), // ทำปุ่มทรงแคปซูล
                                padding: const EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: const Text('Add To Cart'),
                            ),
                          ),
                          const SizedBox(width: 15),
              
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[50],
                                foregroundColor: Colors.blue[700],
                                elevation: 0,
                                shape: const StadiumBorder(), // ทำปุ่มทรงแคปซูล
                                padding: const EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: const Text('Buy Now'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20,),

          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: const Text('เครื่องกรองน้ำ Water Filter RO-01', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  subtitle: const Text('เครื่องกรองน้ำดื่มแบบ RO-01 ปริมาณ 15 L/min'),
                  trailing: const Icon(Icons.more_vert),
                ),
                Image.network(
                  'https://www.baankrongnam.com/uploads/products/5/510/f619d69e1f832e5e6ca487e1ca50f83b.jpg',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildSocialBtn(Icons.thumb_up_alt_outlined, 'Like'),
                      _buildSocialBtn(Icons.comment_outlined, 'Comment'),
                      _buildSocialBtn(Icons.share_outlined, 'Share'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialBtn(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey[700]),
        const SizedBox(width: 4),
        Text(label, style: TextStyle(color: Colors.grey[700])),
      ],
    );
  }
}