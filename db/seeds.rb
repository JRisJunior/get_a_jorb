# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Company.create(name: "HP", logo: "https://upload.wikimed
  ia.org/wikipedia/commons/thumb/a/ad/HP_logo_2012.svg/2048px-HP_logo_2012.svg.png
  ", description: "HP computer")
Company.create(name: "Sony", logo: "https://logos-marques.com/wp-content/uploads/2021/03/Sony-Logo.png
  ", description: "Sony")
Company.create(name: "Nvidia", logo: "https://www.nvidia.com/content/dam/en-zz/Solutions/about-nvidia/logo-and-brand/01-nvidia-logo-horiz-500x200-2c50-p@2x.png
  ", description: "Nvidia")

Job.create(company_id: 1,title: "Customer Service", description: "Applies intermediate level of subject matter knowledge to solve a variety of common business issues and our Large Format . Works on problems of moderately complex scope. Acts as an informed team member providing analysis of information and limited project direction input. Exercises independent judgment within defined practices and procedures to determine appropriate action. Follows established guidelines and interprets policies. Evaluates unique circumstances and makes recommendations.", url: "https://www.indeed.com/rc/clk?jk=611ff811ef15f0c6&fccid=c8eabfdb4fcf2d28&vjs=3", location: "Remote", active: true, salary_range: "38.8 to 49.1k")
Job.create(company_id: 2,title: "Composer", description: "We are looking for a disciplined and talented Composer to join our team. You will work closely with the Bleeding Fingers creative team and collaborate with other composers to develop original score for each project. Composers will be required to work demanding hours to meet client dictated deadlines including potential out of hours and weekend working. Composers will be required to provide edits and amendments to compositions timely and in formats as directed by the client and communicated by the creative team. Outstanding candidates are passionate about creating memorable music and able to convey powerful emotions in their compositions.", url: "https://www.indeed.com/rc/clk?jk=6efa76582105910a&fccid=189d9431c3c1e8ca&vjs=3", location: "Remote", active: true, salary_range: "")
Job.create(company_id: 3,title: "Customer Success Manager", description: "", url: "https://www.indeed.com/rc/clk?jk=a436ce98652c8bb8&fccid=c267f29f0f85e8b8&vjs=3", location: "North Carolina", active: true, salary_range: "169 to 232k")

User.create(name: "Junior", email: "Junior@email.com", password: "password")
User.create(name: "Frank", email: "frank@email.com", password: "password")


