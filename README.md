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

----------------------

EXPLORER MODE
- `posts/new` should present a form where I can enter post content. Upon submission, it should save the new post and show me my newly created post. Author names are listed in a select element of the form.
- `posts/:id/edit` should present me with a form to edit an existing post. The form fields should have the existing values for each. When I submit the form, it should update the record in the database and then show me my newly updated post
- Posts should validate that they have a title, a body and an author. And the forms should present those validation errors to the user.
- A newly created post should, of course, become the new post on the front page.
- Your bottom posts should reflect the newly-created posts as well (rather than be hard-coded if you've done that before now)

ADVENTURE MODE
- I should also have the ability to add and edit authors in the system
- The options for author in the post form should default to a blank value on a new post.
- These forms should look good (in bootstrap if that's your thing)

EPIC MODE
- A title should also be validated as longer than 10 characters, and if that validation fails, it should have a custom error message of "Your post title is #{number_of_characters_short} too short." (where number\_of\_characters\_short is the, well, number of characters short)
- You should have a list view of posts. That list should have at most 10 posts on it, and if you have more posts, there's a link to go to a second page which displays more (and so forth). This behavior is commonly called "pagination".
- `authors/:id/posts` should display a list of posts by a particular author (:id). Bonus: Look into nested routes. Use a partial to reuse the post display for the regular list view.
