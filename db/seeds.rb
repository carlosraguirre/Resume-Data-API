# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create!([
  { first_name: "Carlos", last_name: "Aguirre", email: "car@los.com", password_digest: "password", phone_number: "2021112222", short_bio: "Driven, with a galactic personality", linkedin_url: "https://www.linkedin.com/in/aguirre-carlos/", twitter_handle: "https://twitter.com/Actualize", website_url: "https://www.bonsai-nbf.org/", online_resume_url: "https://www.themuse.com/advice/43-resume-tips-that-will-help-you-get-hired", github_url: "https://github.com/carlosraguirre", photo: "https://avatars.dicebear.com/api/male/carlos.svg" },
  { first_name: "Aiden", last_name: "Isaia", email: "ai@den.com", password_digest: "password", phone_number: "2022223333", short_bio: "From California", linkedin_url: "https://www.linkedin.com/in/aidenisaia/", twitter_handle: "https://twitter.com/VisitHouston", website_url: "https://www.runescape.com/", online_resume_url: "https://www.themuse.com/advice/43-resume-tips-that-will-help-you-get-hired", github_url: "https://github.com/aidenisaia", photo: "https://avatars.dicebear.com/api/male/aiden.svg" },
  { first_name: "Adrian", last_name: "Guerra", email: "ai@guerra.com", password_digest: "password", phone_number: "2023334444", short_bio: "From Houston", linkedin_url: "https://www.linkedin.com/in/adrianfsdev/", twitter_handle: "https://twitter.com/VisitCA", website_url: "https://www.podcastinsights.com/best-podcast-microphones/", online_resume_url: "https://www.themuse.com/advice/43-resume-tips-that-will-help-you-get-hired", github_url: "https://github.com/Adrian5918", photo: "https://avatars.dicebear.com/api/male/adrian.svg" },
  { first_name: "Lukas", last_name: "Kim", email: "lu@kas.com", password_digest: "password", phone_number: "2024445555", short_bio: "Im in Korea now", linkedin_url: "https://www.linkedin.com/in/taegon-kim/", twitter_handle: "https://twitter.com/moviedetail", website_url: "https://bicyclecards.com/how-to-play/basics-of-poker/", online_resume_url: "https://www.themuse.com/advice/43-resume-tips-that-will-help-you-get-hired", github_url: "https://github.com/taegonkim98", photo: "https://avatars.dicebear.com/api/male/taegon.svg" },
])

Education.create([
  { student_id: 1, start_date: "3, Sept 2000", end_date: "31, May 2020", degree: "Doctorate", university_name: "Stanford University", details: "Received doctorate from Stanford University in biology" },
  { student_id: 1234, start_date: "11, May 2016", end_date: "31, May 2020", degree: "Masters", university_name: "Harvard University", details: "Received masters from Harvard in computer science" },
  { student_id: 345, start_date: "3, Sept 2010", end_date: "31, May 2014", degree: "Bachelors", university_name: "Oxford University", details: "Received bachelors degree from Oxford University in music" },
])
