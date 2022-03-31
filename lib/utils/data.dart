var profile = {
  "name": "Sangvaleap",
  "image": "https://abhi8895.github.io/Abhijeet/abhi.jpeg",
  "email": "sangvaleap.vanny@gmail.com"
};

List categories = [
  {"name": "All", "icon": "assets/icons/home.svg"},
  {"name": "Single Room", "icon": "assets/icons/home.svg"},
  {"name": "Double Room", "icon": "assets/icons/home.svg"},
  {"name": "Family Room", "icon": "assets/icons/home.svg"},
  {"name": "Queen Room", "icon": "assets/icons/home.svg"},
  {"name": "King Room", "icon": "assets/icons/home.svg"},
  {"name": "Bungalow", "icon": "assets/icons/home.svg"},
  {"name": "Single Villa", "icon": "assets/icons/home.svg"},
  {"name": "Apartment", "icon": "assets/icons/home.svg"},
];

List cities = [
  {"name": "Andheri", "icon": "assets/icons/home.svg"},
  {"name": "Bandra", "icon": "assets/icons/home.svg"},
  {"name": "Powai", "icon": "assets/icons/home.svg"},
  {"name": "Kalyan", "icon": "assets/icons/home.svg"},
  {"name": "Thane", "icon": "assets/icons/home.svg"},
  {"name": "Malad", "icon": "assets/icons/home.svg"},
  {"name": "CSMT", "icon": "assets/icons/home.svg"},
  {"name": "Navi MUmbai", "icon": "assets/icons/home.svg"},
];

List<String> albumImages = [
  "https://images.unsplash.com/photo-1598928636135-d146006ff4be?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1505692952047-1a78307da8f2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1618221118493-9cfa1a1c00da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1571508601891-ca5e7a713859?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
];

List features = [
  {
    "id": 100,
    "name": "Superior Room",
    "image":
        "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "price": "\₹2100",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 101,
    "name": "Junior Suite",
    "image":
        "https://images.unsplash.com/photo-1505692952047-1a78307da8f2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹1500",
    "type": categories[3]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": true,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 102,
    "name": "Classic Queen Room",
    "image":
        "https://images.unsplash.com/photo-1618221118493-9cfa1a1c00da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹3200",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 103,
    "name": "Luxury King",
    "image":
        "https://images.unsplash.com/photo-1571508601891-ca5e7a713859?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹3500",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 104,
    "name": "Classic Room",
    "image":
        "https://images.unsplash.com/photo-1541123356219-284ebe98ae3b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹1800",
    "type": categories[4]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 105,
    "name": "Twin Room",
    "image":
        "https://images.unsplash.com/photo-1566195992011-5f6b21e539aa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹2500",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
];

List recommends = [
  {
    "id": 110,
    "name": "Luxury King",
    "image":
        "https://images.unsplash.com/photo-1541123356219-284ebe98ae3b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹3100",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 111,
    "name": "Classic Room",
    "image":
        "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹2500",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 112,
    "name": "Twin Room",
    "image":
        "https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\₹1900",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "album_images": albumImages,
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
];
