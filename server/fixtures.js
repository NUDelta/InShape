if (Posts.find().count() === 0) {
	Posts.insert({
		title: 'Norris Meetup', 
		time: '1-2 PM',
		location: 'Norris University Center'
	});
	
	Posts.insert({
		title: 'Ford Meetup', 
		time: '5-6 PM',
		location: 'Ford Design Center'
	});

	Posts.insert({
		title: 'Allison Meetup', 
		time: '8-9 PM',
		location: 'Allison Residential Community'
	});
}
