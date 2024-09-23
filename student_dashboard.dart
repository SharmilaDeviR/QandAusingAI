class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Dashboard'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Question: What is AI?', style: TextStyle(fontSize: 18)),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Answer',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Submit the answer logic
              },
              child: Text('Submit Answer'),
            ),
            SizedBox(height: 20),
            Text('If wrong, complete the following punishment:'),
            ElevatedButton(
              onPressed: () {
                // Upload punishment logic
              },
              child: Text('Upload Punishment'),
            ),
          ],
        ),
      ),
    );
  }
}
