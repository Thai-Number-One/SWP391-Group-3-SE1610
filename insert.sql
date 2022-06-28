use TestProject4


insert into Role (Role_ID,Role_Name)
values(1,'Admin')
insert into Role (Role_ID,Role_Name)
values(2,'Staff')
insert into Role (Role_ID,Role_Name)
values(3,'Manager')
insert into Role (Role_ID,Role_Name)
values(4,'Customer')

insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (1,'ChildrenCare','FPT','0987654321','Admin@Gmail.com','1/1/2001','2/2/2001','Admin','12345','img/img_user/admin.jpg',1,1,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (2,N'Trịnh Đình Thái',N'Hà Nội','0987654321','ThaiTDHE153161@fpt.edu.vn','1/1/2001','1/1/2001','thai','12345','img/img_user/user1.jpg',1,3,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (3,N'Lê Minh Vũ',N'Hà Nội','0987654321','VuLMHE153202@fpt.edu.vn','1/1/2001','1/1/2001','vu123','12345','img/img_user/user2.jpg',1,3,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (4,N'Lê Hữu Đạt',N'Hải Phòng','0987654321','DatLHHE151375@fpt.edu.vn','1/1/2001','1/1/2001','dat1','12345','img/img_user/user3.jpg',1,2,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (5,N'Nguyễn Văn Cương',N'Bắc Ninh','0987654321','CuongNVHS150257@fpt.edu.vn','1/1/2001','1/1/2001','cuong','12345','img/img_user/user4.jpg',1,2,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (6,N'Phan Trọng Nhân',N'Hải Phòng','0987654321','NhanPTHE151206@fpt.edu.vn','1/1/2001','1/1/2001','nhan','12345','img/img_user/user5.jpg',1,4,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (7,N'Lương Văn Đại',N'Bắc Ninh','0987654321','Dailvhe151191@fpt.edu.vn','1/1/2001','1/1/2001','dai1','12345','img/img_user/user6.jpg',1,4,1)

insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(1,'Babies Can’t Wait','Babies Can’t Wait (BCW) is a program designed to help families of young children who are experiencing delays or who have diagnosed conditions that may result in developmental delays. Children aged birth through their third birthday, regardless of income, may be eligible for Babies Can’t Wait in one of two ways:
Children who have certain diagnosed conditions may be eligible automatically. Down syndrome, spina bifida, and cerebral palsy are examples of such conditions.
Children who are very far behind their peers in learning to turn over, crawl, walk and talk, as well as children who may have emotional, speech, or hearing and vision problems.','Children','img/img_service/service1.jpg','Babies Can’t Wait',100,0,4.0,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(2,'Children 1st','Children 1st is the single point of entry to a statewide collaborative system of public health and other prevention based programs and services. The program provides families with information regarding health, child development, and parenting resources.
The purpose of Children 1st is to ensure that all children reach age five healthy and ready for school by helping families access appropriate health and community services, receive education about the importance of a child’s early years, and find support to provide a nurturing environment for their child.','Children','img/img_service/service2.jpg','Children 1st',200,0,5.0,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(3,'Children’s Medical Services','Children’s Medical Services is a statewide program that supports children, youth and young adults (birth – 21) with special health care needs and their families. Children’s Medical Services
provides assistance to eligible families and young adults with accessing timely and affordable health care services as well as needed resources within their communities.
Children’s Medical Services works with the child and young adult’s primary and specialty medical specialists to provide or coordinate for:
Genetic Counseling
Inpatient/Outpatient Hospitalization
Durable Medical Equipment
Medications and Supplies
Diagnostic Testing','Children','img/img_service/service3.jpg','Children’s Medical Services',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(4,'Early Hearing Detection & Intervention','Along with Newborn Metabolic Screening and Children 1st, the EHDI program maintains and supports a comprehensive, coordinated, statewide screening and referral system. EHDI includes screening for hearing loss in the birthing hospital, referral of those who do not pass the initial hospital screening for rescreening, ensuring newborns who do not pass rescreening receive a diagnostic audiological evaluation, and linkage to appropriate intervention for those babies diagnosed with hearing loss. Technical assistance and training about implementing and maintaining a quality newborn hearing screening program is available to hospitals, primary care physicians, audiologists, early interventionists, and public health staff.','Children','img/img_service/service4.jpg','Early Hearing Detection & Intervention',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(5,'Emergency Preparedness','The mission of the Emergency Preparedness and Response Program is to ensure the health and well-being of the individuals and communities in Georgia by preparing for, responding to, and recovering from events of public health significance.
The Southeast Health District’s Emergency Preparedness (EP) program partners with federal, state, and local organizations (e.g., EMA, hospitals, health care coalitions) to better prepare for, respond to, and recover from a disaster.','Children','img/img_service/service5.jpg','Emergency Preparedness',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(6,'Environmental Health Programs','Environmental Health provides primary prevention through a combination of surveillance, education, enforcement, and assessment programs designed to identify, prevent, and abate the environmental conditions that adversely impact human health.
Each county health department has at least one environmental health specialist.','Children','img/img_service/service6.jpg','Environmental Health Programs',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(7,'Epidemiology and Infectious Disease','The Southeast Health District (SEHD) epidemiology and infectious disease programs investigate and conduct surveillance for diseases and other health conditions that affect residents throughout the 16-county district. By monitoring and responding to disease events like HIV, influenza, tuberculosis, vaccine-preventable diseases, outbreaks, and biological attacks, appropriate interventions and control measures can be implemented to lessen the health effects on the community and improve the overall health status in the community.','Children','img/img_service/service7.jpg','Epidemiology and Infectious Disease',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(8,'Health Check','Health Check is a preventive health care program for Medicaid members under age 21 and PeachCare® for Kids members under 19. The goal of the Health Check Program is to assure that individual children get the health care they need when they need it. Private insurance may also cover the cost of this preventative service. Health Check services are available through many primary care providers as well as public health. Contact your local health department or your child’s healthcare provider to make an appointment.','Children','img/img_service/service8.jpg','Health Check',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(9,'Health Promotion','The Southeast Health District (SEHD) Office of Health Promotion provides population based health information, education and interventions through the Chronic Disease Prevention Initiative (CDPI) in communities, schools, and work sites. The SEHD Office of Health Promotion, in collaboration with public and private partners, works to implement policies and environmental changes in support of healthy lifestyles and chronic disease prevention for all residents. CDPI provides assistance in setting up wellness programs and speaking engagements, conducting community assessments, and applying for and managing grants to support chronic disease prevention. Services are available to interested community groups and agencies within the 16-county Southeast Health District.','Children','img/img_service/service3.jpg','Health Promotion',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(10,'Perinatal Health Services','The SEHD offers a variety of perinatal services to mothers and babies.
Perinatal Case Management (PCM) are perinatal services that support, enhance, and coordinate health services for mom and baby in our health departments.
Perinatal Health Partners (PHP) are in-home perinatal services for high-risk pregnant women.
1st Care are post-natal services for families of high-risk infants who may have an increased risk for morbidity and mortality.','Children','img/img_service/service10.jpg','Perinatal Health Services',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(11,'Teens','Teen healthcare is very important in the Southeast Health District. Family planning, health screenings & education, immunizations and more are available at all 16-county health departments. All teen services are confidential.','Children','img/img_service/service11.jpg','Teens',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(12,'Teledentistry','The Southeast Health District’s Teledentistry Program provides school-based screenings, preventative services, oral health education and other dental services for students who have limited access to dental care in rural Southeast Georgia. Services are uniquely provided via videoconferencing in order to offer services at the child’s school.  This enables the child to come to school ready to learn as they no longer experience dental pain, miss fewer days of school for dental treatment and find a dental home for future services.','Children','img/img_service/service12.jpg','Teledentistry',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(13,'Vaccines and Immunizations','Vaccination is one of the best ways parents can protect infants, children and teens from 16 potentially harmful diseases.
Vaccine-preventable diseases can be very serious, may require hospitalization, or even be deadly – especially in infants and young children.
Adults need to keep their vaccinations up to date because immunity from childhood vaccines can wear off over time. You are also at risk for different diseases as an adult.
Vaccination is one of the most effective preventive care measures available. Adult and childhood immunizations are available on a walk-in basis at all local county health departments in the Southeast Health District.','Children','img/img_service/service13.jpg','Vaccines and Immunizations',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(14,'Vital Records','Birth Certificates, Death Certificates, Amendments, and Paternity Acknowledgements are all considered Vital Records. Certified birth certificates and death certificates are available in three county health departments within the Southeast Health District; Bulloch County, Coffee County and Ware County. You can also apply for an Amendment or Paternity Acknowledgement at these locations.','Children','img/img_service/service14.jpg','Vital Records',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(15,'Women’s Health – Family Planning','The Family Planning Program provides comprehensive services to improve the health of families and to address the health needs of women.
Some of the services provided through the Family Planning Program include:
Assessment including history and physical examination
Evaluation and management of contraceptive related services including a wide variety of birth control methods including Long Acting Reversible Contraceptives (LARCs) such as Nexplanon and Intrauterine Devices (IUDs)
Laboratory tests such as cervical cancer screening, hemoglobin, and sexually transmitted disease (STI) testing
Abstinence skills training
Preconceptual health counseling
Pregnancy testing and counseling
Breast self-exam training
Counseling or referral for tobacco cessation, substance abuse, or exposure to violence
Referral for substance abuse counseling','Mom','img/img_service/service15.jpg','Women’s Health – Family Planning',300,0,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(16,'Women, Infants & Children (WIC) Program','Due to the COVID-19 outbreak, all counties within the Southeast Health District are providing WIC services via telephone for new and current WIC participants. 
WIC Staff will certify new participants and provide nutrition education for all participants via telephone. Food vouchers will then be mailed to participants. Please expect a phone call from your clinic’s WIC staff.
The special supplemental nutrition program for Women, Infants, and Children (WIC) provides nutrition education counseling, breastfeeding support and counseling, health and dietary assessments, and supplemental food to eligible clients. The program serves pregnant, breastfeeding, and postpartum women, infants, and children under the age of 5 who are both income eligible and nutritionally at risk.','Mom','img/img_service/service3.jpg','Women, Infants & Children (WIC) Program',300,0,4.5,1)





insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('Helping your child grieve the loss of a loved one','Unlike adults, children do not understand the concept of death. It can be a confusing and frightening time for them if they have witnessed the death of a loved one. Parents of young children hesitate talking about death as they have many concerns that keep them from being honest about it:
Can my child process this information?
Will it make them fear death, or losing their loved ones?
Are they too young to know and understand what death is?
How can I explain it to them?
How will it impact them?
Will it rob my child of their innocence?
The belief that children may not understand or remember certain experiences such as death is not always true. When they lose a pet or a loved one, children as young as five years old can understand that something is different. Even if their parents and other adults do not directly address the issue, they may overhear what others are talking, or try to make sense of the situation through what they see on television, or in the movies.
Grieving is an important part of coping with a loss. It can help a person come to terms with the loss, accept the importance of the person they loved, and gradually overcome their pain and acknowledge what they meant to them. Children, no matter how young, are likely to pick up cues from around them; they may see what going on (the funeral, the body, or certain post-death rituals) or hear snatches of conversation that give them a vague sense that something out of the ordinary is happening.
Not knowing what they are dealing with can make it more confusing and sometimes even scary for the child. In the case of a death in the family, the child may also develop wrong ideas (fear of losing other adults in their life, fear that they will die suddenly, or may die when they go to sleep at night) unless a trusted adult takes the time to explain it to them.',5,'img/img_post/post1.jpg',1,'07/21/2020',1,'Childhood')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('Why Your Child Needs Sleep','“You need a nap” is most parents’ default response when toddlers get cranky—and not without good reason. After all, we know our young children need their sleep, and the change in their mood and behavior before and after a nap is remarkable enough to demonstrate the benefits of sleep. 
How much sleep, though, does your toddler need each day? What are ways to help them get the rest they need?
According to the Cleveland Clinic, children who are one to two years of age should sleep 11 to 14 hours during each 24-hour period. This includes nighttime sleep and daytime naps. As a child approaches the age of three, they’ll likely move from a crib to a bed and reduce their number of naps to just one a day. 
To help, the Clinic says, stick to the same schedule each day, including bedtime and waking up times. Plan naptimes that aren’t too late in the day. About half an hour to an hour before bedtime, start your nighttime routines, which can include dimming lights, participating in calming activities (perhaps a relaxing bath for your toddler), and story time. Set limits on how long you’ll read and let your child choose favorite pajamas and a stuffed animal for bed.
Keep the bedroom dark except for a night light, as needed, with a comfortable temperature. Beds should be for sleeping only, not for playing or watching television.',3,'img/img_post/post2.jpg',1,'03/02/2022',1,'Childhood')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('4 Simple Ways to Deal with Bug Bites','Ah, summer. The time of year when adults and kids alike spend long hours outdoors enjoying picnics, parties and play. Unfortunately, summertime means that bugs are enjoying long hours outdoors, too. The good news is you can prevent mosquitoes, ticks and flies from interfering with your family’s enjoyment of the season. Here are four ways to deal with bug bites.
Strategy #1: Outsmart the bugs.
If you know when insects are likely to be out and about, looking to bite, you can evade them more easily. TodaysParent.com shares feeding times for common insects: Mosquitoes are likely looking to eat at dawn and dusk, with black flies most active during the late afternoon and early evening. If you can avoid those times outdoors, great. But, it’s likely that you can’t, not entirely, so dress your child in light-colored clothing, since dark and bright colors may attract insects. Don’t apply scented lotions, which can be a magnet to flies, as well as bees and wasps. Finally, protect your child by dressing him or her in long sleeves. Tuck pants into socks and choose closed-toed shoes. Top with a hat. This may not always be practical in hot weather, but follow these precautions for sure when going into wooded or swampy areas.
Parents.com offers more detailed information about specific insects’ habits and habitats.

Strategy #2: If you can’t avoid ’em, repel ’em.
The Centers for Disease Control and Prevention, according to AkronsChildrens.org, recommend insect repellents with at least 20 percent DEET. These include Cutter Backwoods and Off! Deep Woods. Read the application instructions and follow them exactly, applying the repellent to your hands and then spreading it carefully on your child’s exposed skin. If you’re going to use sunscreen, too, apply that first. Once it’s dry, then you can apply the insect repellent. Don’t use products that are a repellent/sunscreen combination and don’t spray the insect repellent under your child’s clothes. Keep the products out of reach of any children.

Strategy #3: Devise a smart treatment plan.
If a bug bites your child, use cold compresses or a cool bath to reduce the itching or burning. You may need to apply an ice pack once an hour for six hours, keeping it on for 15 to 20 minutes at a time. When you’re not using the ice, keep a cool, wet washcloth over the affected skin. To reduce swelling, elevate the part of the body with the bite.

Try to distract your child if he or she is tempted to scratch the bite and, if the itchiness is just too much, use hydrocortisone cream, avoiding broken skin and areas by the mouth and eyes. Benadryl is a possibility if your child is 2 or older (although you’ll want to talk to your doctor first).

Strategy #4: Know when to seek medical attention.
If your child gets a fever, receives multiple bites or stings, or has bites near the eyes, call your doctor. This is also the best advice if the bites are painful or appear infected. In most cases, everything is fine, but better safe than sorry.

Head to the emergency room if your child has a history of severe reactions to bites or stings. Also seek emergency care if your child is short of breath, or starts to wheeze or complain of chest pain/tightness. If he or she struggles to speak or swallow, head to the emergency room. Other warning signs are weakness or fainting, abdominal pain, vomiting or severe swelling.',4,'img/img_post/post3.jpg',1,'02/07/2017',1,'Childhood')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('How Much Sleep Does Your Child Need?','With daylight saving time approaching in early November, we’re considering the importance of sleep for children. While we will be gaining an hour, how much sleep is really needed for children? The answer is that it depends on their age.

About a decade ago, pediatricians debated this question in response to a review of 32 sets of sleep recommendations that dated from 1897 to 2009. According to “Never Enough Sleep: A Brief History of Sleep Recommendations for Children,” published in Pediatrics: Official Journal of the American Academy of Pediatrics (AAP), recommendations declined by about .71 minutes per year, with actual amounts of sleep declining in similar ways.

AAP’s conclusion was as follows: “A lack of empirical evidence for sleep recommendations was universally acknowledged. Inadequate sleep was seen as a consequence of ‘modern life,’ associated with technologies of the time. No matter how much sleep children are getting, it has always been assumed that they need more.”

So, what has changed since 2012? What are the current sleep recommendations? How closely should you follow them?

To answer the last question first, parents should use sleep recommendations as a starting point, adjusting them up or down in accordance with the child’s individual needs. Behavior, both at home and at school and childcare, is a reasonable indicator of each child’s sleep needs and should guide bedtimes.

Now, here are responses to the first two questions. In 2016, the AAP released revised sleep recommendations for children. For optimal health, during a 24-hour period, here are their minimum and maximum recommendations for children by age:

Ages 4-12 months: 12-16 hours (including naps)
Ages 1-2 years: 11-14 hours (including naps)
Ages 3-5 years: 10-13 hours (including naps)
Age 6-12 years: 9-12 hours
Age 13-18 years: 8-10 hours
Here are the Sleep Foundation’s recommendations, including naps:

0 to 3 months old: 14-17 hours
4-11 months: 12-15 hours
1-2 years old: 11-14 hours
3-5 years old: 10-13 hours
6-13 years old: 9-11 hours
WebMD offers similar recommendations (but ones that aren’t exactly the same).

Tips for Healthier Sleep
The Cleveland Clinic offers helpful tips, including creating a regular sleep schedule that has bedtime and wake-up times that don’t vary by more than 30 to 45 minutes between weeknights and the weekend. Create a consistent bedtime routine that helps to prepare your children for sleep, which includes turning off screens at least an hour before it’s time for bed.

To make sleep easier for your child, ensure that they’re getting at least an hour of physical activity every day with outdoor play in the morning having extra benefits. Plus, cut off caffeine and sugary drinks during the second half of the day. As an added tip, be a good role model and prioritize sleep for yourself.

HealthyChildren.org emphasizes the importance of a bedroom environment that supports sleep. This includes a comfortable temperature with lighting with dimming capabilities. Make your child’s bed a place to sleep, not to play. Although a favorite stuffed animal or blanket can be helpful, don’t fill the bed up with toys.

Sleep Problem Awareness
Check in with your children’s teachers and child care providers to make sure they’re alert during the day. If they aren’t getting enough sleep at night, this can lead to daytime problems with attention and behavior. If you find it challenging to address their sleep problems on your own, talk to your pediatrician. Most issues can be addressed fairly easily.

Sleep.org says that keeping a sleep diary that contains a child’s bedtime and wake-up time, information about how long it takes for them to fall asleep, sleeping complaints made, and so forth can be helpful when you discuss issues with the pediatrician. Be prepared to talk about the quantity of sleep your child is getting as well as the quality. Also, be proactive. The sooner you address any challenges, the more easily they can usually be handled so your child can get a good night’s sleep.',5,'img/img_post/post4.jpg',1,'10/13/2021',1,'Childhood')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('Winning the Bedtime Battle: Why You Child Won’t Go to Sleep','If you’re a parent who struggles to get your child to go to sleep at night, it can help to determine why your child is experiencing insomnia. Because there are multiple reasons why children don’t fall asleep easily, there are also numerous solutions to consider.

Reasons for Childhood Sleep Difficulties
According to HelpGuide.org, reasons can range from too much television watching before bed to stress, and from too much caffeine intake to medical reasons and more. Parents typically have to serve as “sleep detectives” to help their children make a connection between daytime habits and sleep challenges, and they may need to seek out medical help for their children if certain underlying conditions exist. Here are more specifics.

Stress
A doctor being interviewed by Medscape.com notes that, during the pandemic, she’s seeing more children who are too anxious to fall asleep. She’s also seeing people who are struggling with night terrors and frequent awakening times during the night.

So, it can help to determine if your child’s sleep difficulties are new or have worsened during COVID. If so, anxiety may be playing a role. The pandemic isn’t the only potential source of stress for kids with insomnia, though. They may be feeling worried about school, having problems with friends, struggling to adjust to a new sibling, and so forth. Explore possibilities!

Caffeine
This substance can be found in soda pop, chocolate, and energy drinks—as well as in coffee and tea—and one Australian study, published in the U.S. Library of Medicine, demonstrated a connection between sleep problems in children and their intake of caffeine. More specifically, caffeine use was connected with disruptions in sleep routines, feeling tired in the morning, and restless sleep. If your child consumes caffeine and is having sleep problems, try to cut back past lunchtime or even eliminate caffeine sources to see if it helps.

Medical Issues
Some medications can cause insomnia in children while allergies and other causes of stuffy noses can keep children from breathing well at night. Some children could have sleep apnea or restless leg syndrome.

Establishing Good Bedtime Routines
While paying attention to stress and caffeine triggers described above and watching for possible medical issues that are contributing to insomnia, also work on establishing healthy bedtime routines. According to WebMD.com, it can help to make regular bedtimes and wake-up times a family priority. Explain any new routines to your children, along with how everyone will benefit from better sleep. With young children, picture-based charts of the new schedule may help.

Children typically thrive on routines and, as you make bedtime a special one with its own schedule, children will often begin to look forward to the steps. These can include having a healthy snack and then washing up, brushing teeth, putting on pajamas, and hearing a bedtime story. Routines shouldn’t last more than 30 minutes (outside of bath time).

Make sure your child’s bedroom is comfortable at a cool (not cold!) temperature. Children sleep best in dark, quiet rooms; if total darkness feels scary to your child, have a small night light on. Some children sleep better with a favorite blanket or stuffed animal. If your child gets out of bed (“I just need a drink of water”), return them to bed without arguing or giving them extra attention.

Once this routine becomes firmly established, then it should become much easier. If you notice new signs of insomnia, investigate causes. Perhaps there is a new source of stress or other issues that can use some loving time and attention.',5,'img/img_post/post5.jpg',1,'09/22/2021',1,'Childhood')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('Seasonal Affective Disorder in Children: What to Know','Seasonal Affective Disorder (SAD) is a form of depression that follows a seasonal pattern, emerging in the fall and winter as daylight lessens and letting up in the spring and summer as the days lengthen.

While SAD has received a fair amount of attention for its effects on adults, the condition can also affect children. Here’s what you should know about SAD and how to help your child if they experience it.

Signs of SAD
What distinguishes SAD from other forms of depression is that it only occurs for a few months of the year and has a distinct seasonal pattern. Symptoms can range from mild to severe and can include:

Changes in mood that can include sadness, irritability or hopelessness most of the time for at least two weeks.
Lack of enjoyment in things that are normally enjoyable or a feeling that tasks can’t be accomplished as well as before.
Low energy
Changes in sleep
Changes in appetite
Difficulty concentrating
Seasonal Affective Disorder in Children
To be diagnosed with SAD, your child has to have experienced these symptoms seasonally for at least two years. In addition to the above symptoms, you might notice your child’s grades are slipping or they have withdrawn from social activities. Though SAD is most common in teens and those in their early 20s, children can experience it as well.

How to Help Your Child
If you’re concerned your child might be experiencing SAD, the first thing to do is speak with their doctor. Symptoms of SAD can also be symptoms of other conditions, so it’s best to have those ruled out before assuming your child is experiencing depression.

If your child’s doctor suspects SAD, there are some things you can do to help your child feel better:

Participate in their treatment by asking the doctor how you can help.
Help your child understand SAD and why they’re feeling the way they do
Spend quality time with your child
Offer help with homework
Help your child eat healthily and establish a sleep routine
You can also help by:

Encouraging your child to get outside regularly, even on cloudy days
It may be winter, but opening up the shades in your home can bring more natural light in
Trying light therapy
Encouraging regular exercise
If the above treatments don’t work, your doctor may recommend medications to help relieve your child’s symptoms. It’s important to take your child’s symptoms seriously. Doing so can help your child feel better faster.',4,'img/img_post/post6.jpg',1,'01/13/2021',1,'Childhood')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('Give Your Child the Advantages of Exceptional Afterschool Care','The benefits of afterschool care can be quite significant academically, socially and emotionally—and quality programming also helps children to develop skills they will use throughout their lifetime. Here are some of the ways a quality afterschool program can benefit your child and position them for lifelong success.

Academic Benefits
According to a U.S. government website that focuses on creating and maintaining effective programs for youth, more than 40% of students who attend 21st Century Community Learning Center programs — such as those provided at Horizon Education Centers — improve their math and reading grades. Attend more regularly? Grades are more likely to go up!

Ways in which a quality afterschool child care program can help school-age children academically include how:

Youth can work on homework in a calmer environment, with help readily available.
Children can receive information about academic subjects — including reading, math, and science — in a way that boosts their ability to understand them.
They can learn in fun, engaging ways, from arts and crafts to computer learning and more — and when people of any age enjoy what they’re doing, they tend to be more successful.
Here’s another key factor: Attendees of afterschool programs are more likely to fully participate in school. In fact, one study showed that students in middle school who attended afterschool programs had 25% fewer absences. Plus, the more that children attended the program, the more their attendance improved.

Social and Emotional Benefits
According to the Ohio Afterschool Network, quality afterschool care “improves students’ social skills, gives them more confidence, [and] creates higher educational and career aspirations.” This can be achieved by providing youth with opportunities to experience and enjoy “music, art, sports, conflict resolution, cultural experiences, and other alternative ways of learning.” More than just a place for child care and homework help, a quality afterschool program can provide learning opportunities for school-age children outside of school time.

Leadership Benefits
When looking at teens who have participated in these types of programs during the school year, one study by the Boys and Girls Club shows that 82% of them have been taking on leadership roles, whether that’s by serving on student council or otherwise taking charge of activities.

Here is more information about the benefits of quality afterschool care.

Keeping Your Children Safe
We all know there are dangers and temptations out there so, if you can, avoid leaving your children at home alone every day after school. In addition, Education.com notes that “Home alone latch key children generally watch television, eat snacks, play with pets and fight with siblings.” These are not terrible activities, but your child could spend that time doing so much more to improve his or her academic and social life.

Working Parent Guilt
Are you a working parent who is concerned that all of the work you do to provide for your child gets in the way of spending time with him or her? If so, that’s understandable. Here are a couple of things that can help you to banish feelings of guilt.

First, a Harvard Business School study looked at adult children whose mothers had worked outside the home. How did this affect them? Well, these children actually did quite well in their own careers, earning at least 23% more than women who had moms who stayed at home. This isn’t being shared to say anything against mothers who stay home to care for their children. Instead, it’s to show that it’s OK to let go of that guilt.

Plus, when you can’t be home with your children as much as you’d like, it just makes sense to help ensure that they’re being watched over by caring and competent professionals, while also engaging in activities that can be a foundation for future success.

Horizon Education Centers’ Afterschool Care
Horizon Education Centers is a non-profit organization that has provided exceptional before and afterschool education programs for the families of Western Cuyahoga County and Lorain County since 1978.

Here are our primary communities, with conveniently located centers that provide a clean, safe educational setting for children to learn and develop in all aspects of their life. Horizon is committed to the development of well-rounded children. Reinforcing what is learned during the school day needs to be fun and entertaining for children, and Horizon uses our various programs to achieve this balance.

We invite you to consider Horizon for your fall afterschool program. Here is more information on our program to help you get started.',3,'img/img_post/post7.jpg',1,'02/09/2020',1,'Childhood')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('Tech Tips for Tweens: Set Healthy Limits on Digital Screen Use','How many hours a day does your tween spend texting, tweeting, gaming and cruising Facebook? With all the media options available today, a Kaiser Family Foundation study found many children ages 8-18 are spending nearly 7.5 hours a day immersed in digital media. However, the American Academy of Pediatrics recommends only 1 to 2 hours of media use for children, tweens and teens and recommends avoiding media exposure for children under age 2.

Finding the Right Balance
Setting healthy limits on digital screen use can help your tween learn to use technology responsibly. We hope you find these tech tips for tweens helpful:

• Tech-free zones. To help ensure safe use of digital media, many parents prohibit technology use in unsupervised areas of the home. You can also make certain family activities tech-free. Many parents ban technology at the dinner table, in the bedroom and during special family excursions. Banning the use of digital media two hours before bedtime is also recommended as light waves emitted by digital screens can interfere with sleep.

• Limit tech time. Set time limits for media use. To teach tweens that technology use is a privilege, not a right, some parents reward good behavior, grades or chores with digital media time. (Click here for helpful tech tips for tweens on limiting computer gaming.)

• Monitor tech use. Teach your child to use digital media responsibly and discuss the consequences of posting decisions. Use parental controls to monitor and help limit your child’s risk.',3,'img/img_post/post8.jpg',1,'09/26/2014',1,'Childhood')

