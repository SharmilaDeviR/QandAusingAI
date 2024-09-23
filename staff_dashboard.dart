class StaffDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Dashboard'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Upload courses logic
              },
              child: Text('Upload Courses'),
            ),
            ElevatedButton(
              onPressed: () {
                // Upload course plan logic
              },
              child: Text('Upload Course Plan'),
            ),
            ElevatedButton(
              onPressed: () {
                // Upload course material logic
              },
              child: Text('Upload Course Material'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trigger AI to ask a question
              },
              child: Text('Ask Question'),
            ),
          ],
        ),
      ),
    );
  }
}
