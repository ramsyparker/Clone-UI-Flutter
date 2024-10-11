import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title; 
  final String description; 

  const DetailScreen(
      {Key? key,
      this.title = 'Default Title',
      this.description = 'Default Description'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                color: Colors.grey[300],
                child: Center(
                  child: Icon(Icons.image, size: 100),
                ),
              ),
              SizedBox(height: 16),

              // Title di halaman detail
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 8),

              // Tanggal atau informasi lainnya
              Text(
                'Published date',
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 16),

              // Deskripsi di halaman detail
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 16),

              // Teks tambahan
              Text(
                'Duis aute irure dolor in reprehenderit in voluptate velit esse '
                'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat '
                'cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),

              SizedBox(height: 24),

              // Bagian lain seperti 'Other Post'
              Text(
                'Other Post',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 8),

              // List atau grid untuk post lainnya
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3, // Jumlah post lainnya
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      color: Colors.grey[300],
                      child: Icon(Icons.image, size: 30),
                    ),
                    title: Text('Title'),
                    subtitle: Text(
                        'Description dius aute irure dolor in reprehenderit'),
                    trailing: Text('Today • 22 min'),
                    onTap: () {
                      // Aksi ketika post lain di tap
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
