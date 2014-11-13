# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_INSECURE_PASSWORD = 'ignitedminds1234'

User.create({
	first_name: "Lewis",
	last_name: "Phillips",
	user_name: "Lewis",
	email: "lewis@ignitedminds.co.uk",
	password: DEFAULT_INSECURE_PASSWORD,
	password_confirmation: DEFAULT_INSECURE_PASSWORD,
	bio: "Default bio for Ignited Minds co-founder",
	bg_url: "http://proof.nationalgeographic.com/files/2014/02/NationalGeographic_1754277-web-2.jpg",
	admin: true,
	})
	
	
lewis = User.find_by_email('lewis@ignitedminds.co.uk')

seed_user = lewis

seed_user.articles.create(
	name: "Default Article 1",
	content: "Articles are deliberately designed to be immersive and visually appealing. Each article has a unique header image, and an out-of-focus full width background image. By changing these, the tone of the page can be set without having to read a single word. The typography on this page is carefully styled to be legible and natural to read. The line-length of 81 characters is optimum for reading on both desktop, tablet and mobile versions of the site. Captioned images and videos can be placed inline with text. Quotation and text basic HTML formatting is also available through the sites content management system. The rest of this article is placeholder text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint id iure suscipit perspiciatis at ab reiciendis. Aliquam, aperiam, dicta asperiores inventore hic ea deleniti modi labore iusto dignissimos. Tenetur rem aut nobis delectus at beatae consequatur voluptatum assumenda mollitia explicabo? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero velit deserunt minima ducimus dolores porro soluta eos nemo illum blanditiis.",
	description: "This is an example article on Ignited Minds. We create content ourselves, with partners and other Ignited Minds. Sometimes, we will feature content from partners and third-parties.",
	thumb: "http://lewis-phillips.co.uk/app2/assets/img/content-head--1.png",
	video_id: "http://vimeo.com/73622319",
	body_img1: "http://lewis-phillips.co.uk/app2/assets/img/photo.jpg",
	bg_img: "http://i.imgur.com/p4qDEoC.jpg",
	tag: "Design",
	cta_button: "View",)
	
	
seed_user.articles.create(
	name: "Default Article 2",
	content: "Articles are deliberately designed to be immersive and visually appealing. Each article has a unique header image, and an out-of-focus full width background image. By changing these, the tone of the page can be set without having to read a single word. The typography on this page is carefully styled to be legible and natural to read. The line-length of 81 characters is optimum for reading on both desktop, tablet and mobile versions of the site. Captioned images and videos can be placed inline with text. Quotation and text basic HTML formatting is also available through the sites content management system. The rest of this article is placeholder text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint id iure suscipit perspiciatis at ab reiciendis. Aliquam, aperiam, dicta asperiores inventore hic ea deleniti modi labore iusto dignissimos. Tenetur rem aut nobis delectus at beatae consequatur voluptatum assumenda mollitia explicabo? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero velit deserunt minima ducimus dolores porro soluta eos nemo illum blanditiis.",
	description: "This is an example article on Ignited Minds. We create content ourselves, with partners and other Ignited Minds. Sometimes, we will feature content from partners and third-parties.",
	thumb: "http://lewis-phillips.co.uk/app2/assets/img/content-head--1.png",
	video_id: "http://vimeo.com/73622319",
	body_img1: "http://lewis-phillips.co.uk/app2/assets/img/photo.jpg",
	bg_img: "http://i.imgur.com/p4qDEoC.jpg",
	tag: "Design",
	cta_button: "View",)

seed_user.articles.create(
	name: "Default Article 3",
	content: "Articles are deliberately designed to be immersive and visually appealing. Each article has a unique header image, and an out-of-focus full width background image. By changing these, the tone of the page can be set without having to read a single word. The typography on this page is carefully styled to be legible and natural to read. The line-length of 81 characters is optimum for reading on both desktop, tablet and mobile versions of the site. Captioned images and videos can be placed inline with text. Quotation and text basic HTML formatting is also available through the sites content management system. The rest of this article is placeholder text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint id iure suscipit perspiciatis at ab reiciendis. Aliquam, aperiam, dicta asperiores inventore hic ea deleniti modi labore iusto dignissimos. Tenetur rem aut nobis delectus at beatae consequatur voluptatum assumenda mollitia explicabo? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero velit deserunt minima ducimus dolores porro soluta eos nemo illum blanditiis.",
	description: "This is an example article on Ignited Minds. We create content ourselves, with partners and other Ignited Minds. Sometimes, we will feature content from partners and third-parties.",
	thumb: "http://lewis-phillips.co.uk/app2/assets/img/content-head--1.png",
	video_id: "http://vimeo.com/73622319",
	body_img1: "http://lewis-phillips.co.uk/app2/assets/img/photo.jpg",
	bg_img: "http://i.imgur.com/p4qDEoC.jpg",
	tag: "Design",
	cta_button: "View",)
	
	
seed_user.articles.create(
	name: "Default Article 4",
	content: "Articles are deliberately designed to be immersive and visually appealing. Each article has a unique header image, and an out-of-focus full width background image. By changing these, the tone of the page can be set without having to read a single word. The typography on this page is carefully styled to be legible and natural to read. The line-length of 81 characters is optimum for reading on both desktop, tablet and mobile versions of the site. Captioned images and videos can be placed inline with text. Quotation and text basic HTML formatting is also available through the sites content management system. The rest of this article is placeholder text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint id iure suscipit perspiciatis at ab reiciendis. Aliquam, aperiam, dicta asperiores inventore hic ea deleniti modi labore iusto dignissimos. Tenetur rem aut nobis delectus at beatae consequatur voluptatum assumenda mollitia explicabo? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero velit deserunt minima ducimus dolores porro soluta eos nemo illum blanditiis.",
	description: "This is an example article on Ignited Minds. We create content ourselves, with partners and other Ignited Minds. Sometimes, we will feature content from partners and third-parties.",
	thumb: "http://lewis-phillips.co.uk/app2/assets/img/content-head--1.png",
	video_id: "http://vimeo.com/73622319",
	body_img1: "http://lewis-phillips.co.uk/app2/assets/img/photo.jpg",
	bg_img: "http://i.imgur.com/p4qDEoC.jpg",
	tag: "Design",
	cta_button: "View",)
	
	
seed_user.articles.create(
	name: "Default Article 5",
	content: "Articles are deliberately designed to be immersive and visually appealing. Each article has a unique header image, and an out-of-focus full width background image. By changing these, the tone of the page can be set without having to read a single word. The typography on this page is carefully styled to be legible and natural to read. The line-length of 81 characters is optimum for reading on both desktop, tablet and mobile versions of the site. Captioned images and videos can be placed inline with text. Quotation and text basic HTML formatting is also available through the sites content management system. The rest of this article is placeholder text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint id iure suscipit perspiciatis at ab reiciendis. Aliquam, aperiam, dicta asperiores inventore hic ea deleniti modi labore iusto dignissimos. Tenetur rem aut nobis delectus at beatae consequatur voluptatum assumenda mollitia explicabo? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero velit deserunt minima ducimus dolores porro soluta eos nemo illum blanditiis.",
	description: "This is an example article on Ignited Minds. We create content ourselves, with partners and other Ignited Minds. Sometimes, we will feature content from partners and third-parties.",
	thumb: "http://lewis-phillips.co.uk/app2/assets/img/content-head--1.png",
	video_id: "http://vimeo.com/73622319",
	body_img1: "http://lewis-phillips.co.uk/app2/assets/img/photo.jpg",
	bg_img: "http://i.imgur.com/p4qDEoC.jpg",
	tag: "Design",
	cta_button: "View",)
	
	
seed_user.articles.create(
	name: "Default Article 6",
	content: "Articles are deliberately designed to be immersive and visually appealing. Each article has a unique header image, and an out-of-focus full width background image. By changing these, the tone of the page can be set without having to read a single word. The typography on this page is carefully styled to be legible and natural to read. The line-length of 81 characters is optimum for reading on both desktop, tablet and mobile versions of the site. Captioned images and videos can be placed inline with text. Quotation and text basic HTML formatting is also available through the sites content management system. The rest of this article is placeholder text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint id iure suscipit perspiciatis at ab reiciendis. Aliquam, aperiam, dicta asperiores inventore hic ea deleniti modi labore iusto dignissimos. Tenetur rem aut nobis delectus at beatae consequatur voluptatum assumenda mollitia explicabo? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero velit deserunt minima ducimus dolores porro soluta eos nemo illum blanditiis.",
	description: "This is an example article on Ignited Minds. We create content ourselves, with partners and other Ignited Minds. Sometimes, we will feature content from partners and third-parties.",
	thumb: "http://lewis-phillips.co.uk/app2/assets/img/content-head--1.png",
	video_id: "http://vimeo.com/73622319",
	body_img1: "http://lewis-phillips.co.uk/app2/assets/img/photo.jpg",
	bg_img: "http://i.imgur.com/p4qDEoC.jpg",
	tag: "Design",
	cta_button: "View",)