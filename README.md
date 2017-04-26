EXPLORER MODE

To complete this assignment correctly, you must do the following tasks:
- Create the Surf & Paddle web page from scratch based on the given image.
- Make sure that it is as close to "pixel perfect" as possible with the original mockup.[1]
- Use Bootstrap to accomplish the above
- Use the provided vector logo.
- Your HTML and CSS should both be valid and free of syntax and other errors.
- You should create a Post and User model (User has_many posts), seed your database with 15 posts by five users and use this data to populate your new template.
- Make the pages dynamic, where:
  - The root page shows the latest post (Note: Latest post will be the most-recent created_at date)
  - The images at the bottom of the page link to that post
  - When viewing that post (URL will be /posts/:id) it shows that post

ADVENTURE MODE
- Add responsive styles to your web page to make it work well on mobile. It should match this responsive wireframe
- Make an about page. And handle it through a separate controller.
- The title tag should change between the pages
- Change our posts so that they can also have a specific image (and method) associated with each object (ala. post.image == "whatever.jpg"). Use that to manage the images that are shown in the views.
- Have the posts at the bottom be ordered by created_at (Most recent on the left, to oldest on the right). This list shouldn't include the post being displayed in the main area (on the front, the most recent post shouldn't be there. On Post show pages, the post being shown shouldn't be there)

EPIC MODE
- Each author should have a separate profile photo, no?
- On a post show page, the header background should be the image related to that post.
- The ad in the sidebar should cycle between a random selection of ads. Let's say 6 different ads.
- Use a partial for the display of the posts at the bottom.
