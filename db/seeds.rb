# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'activerecord-reset-pk-sequence'

User.destroy_all
Treat.destroy_all
Order.destroy_all
OrderTreat.destroy_all

User.reset_pk_sequence
Treat.reset_pk_sequence
Order.reset_pk_sequence
OrderTreat.reset_pk_sequence

user01 = User.create(
    username: "katherine", 
    password: "abc123",#$2a$12$8RkmJ7ycgrQGUSTk033tNuXsNLf1Mb4.TK6i/OKyVVhnla3qZaVdO
    first_name: "Ekaterina",
    last_name: "Zarudnaya",
    address: "253 5th Street",
    city: "New York",
    state: "NY",
    zip: 10016,
    phone: "212-777-7777",
    email: "katherine@gmail.com")


# Treat Attributes
# :name (string)
# :description (string)
# :price (integer)
# :image (string)

# "",   ""

# Long Format
# treat = Treat.create(name: "", description: "", price: , image: "",)

# Variable Templates
# Name = ""
# desc = ""
# price =
# image = "" 

# Short Format Template
# treat = Treat.create(name: , description: , price: , image: ,)


name01 = "Signature Chef’s Selection"
name02 = "Dark Chocolate Salted Caramel Truffles"
name03 = "White Chocolate Strawberry Truffles"
name04 = "Fruity Bon Bon Collection - 12 Piece"
name05 = "Tropical Bon Bon Collection - 16 Piece"
name06 = "Krunchy Krispy - Dark"
name07 = "Krunchy Krispy - Milk"
name08 = "Dragee Yogurt Collection"
name09 = "Dragee Collection"
name10 = "Macadamia Nut Toffee"
name11 = "Assorted Soft Caramels"
name12 = "Hazelnut Spread"
name13 = "Sunrise Hot Chocolate Tin"
name14 = "Cheesecake Macaron"
name15 = "Double Chocolate Almond Fudge Cookies"
name16 = "Pistachio Travel Cake"
name17 = "Chocolate Travel Cake"
name18 = "70% Dark Chocolate Bars"
name19 = "40% Milk Chocolate Bars"
name20 = "31% White Chocolate Bars"
name21 = "Assorted Chocolate Bars"
name22 = "Iced Hot Chocolate"
name23 = "Thinking of You Gift Set"
name24 = "Classic Gift Set"


desc01 = "Our chef's curated selection of 24 chocolates is the ultimate expression of our craftsmanship and experience. This collection combines classic American and seasonal flavors with our time-tested French techniques. We carefully select our ingredients for their unique flavors and characteristics, with the intention of evoking a memory and telling a story. Flavors contain: Tahitian vanilla, gingerbread, salted butter caramel, mint, honey saffron, kumaru, banana peanut, Mexican hot chocolate, oatmeal cookie, Cherry Cola vanilla."

desc02 = "Our salted caramel dark chocolate ganache is coated in a thin dark chocolate shell, then dusted with cocoa powder. Each box contains 18 truffles."

desc03 = "Inspired by the taste of fresh strawberries! Our strawberry white chocolate ganache is coated in a thin layer of white chocolate, then dusted with a strawberry powdered sugar. Each box contains 18 truffles."

desc04 = "An artistic and deeply flavorful assortment of milk chocolate enrobed domes featuring a decadent combination of three flavors; Peach Melba, Coconut Roasted Pineapple, & Key Lime."

desc05 = "Whimsical and luscious, this combination of macaron shaped chocolates include three sophisticated flavors: Mojito, Kiwi Lemongrass, and 10-Flavor Yogurt."

desc06 = "Crunchy, caramelized almonds and crispy rice cereal are blended with candied citrus and gingerbread spices, then covered in dark chocolate to create these irresistible, bite size confections. Incredibly unique and addictive!"

desc07 = "Crunchy, caramelized almonds and crispy rice cereal are covered with milk chocolate containing notes of caramel to create these irresistible, bite size confections.  Incredibly unique and addictive!"

desc08 = "Perfectly toasted almonds coated in white chocolate and yogurt. These bite size crunchy snacks are great for sharing. Three explosive flavors: Mixed Berry, Mango Passion Fruit and White Chocolate. Total product weight: 8.4 oz."

desc09 = "Perfectly toasted almonds enrobed in varieties of chocolate to create explosively crunchy bites. Each flavor is individually packaged, making it perfect for sharing. The truly addictive flavor profiles include: Mixed Berry Yogurt, Mango Passion Fruit Yogurt, White Chocolate Yogurt, Black Forest, Pistachio and Almond Hazelnut Praline. Total product weight: 16.8 oz."

desc10 = "The ultimate treat of house made English style toffee, combined with slow-roasted chunks of premium macadamia nuts, covered in dark chocolate."

desc11 = "Each batch of caramel is made with care — handmade, hand cut and hand wrapped. We use only pure ingredients, delivering the most exquisite burst of flavor. Flavors include: mixed berry, salted caramel, chocolate, tropical fruit, pineapple lime and apple pear."

desc12 = "70% dark chocolate is combined with hazelnuts from southern Italy and a touch of fleur de sel, creating this irresistibly creamy house made hazelnut spread. Available in single and 4-Pack size. Each jar weighs 6 oz."

desc13 = "Our uniquely crafted house mix contains real chunks of dark, milk and white chocolate. It's presented in our signature Kreuther tin, perfect for gifting. Product weight: 14 oz."

desc14 = "The perfect union of a New York cheesecake and a French macaron. Our airy almond shells are handcrafted in small batches to recreate classic French technique and filled with creamy modern flavors for a taste of New York. Five cheesecake filled flavors: mango passion fruit, pistachio, salted caramel, mixed berry and original cheesecake (contains gluten). The sixth flavor is of course chocolate, with our house made signature hazelnut spread. Each package contains: 12 macarons, 2 of each flavor."

desc15 = "Our rich double chocolate almond fudge cookies are made with dark chocolate, egg whites and toasted almonds, then baked to a crunchy, chewy perfection. 12 cookies, non gluten ingredients."

desc16 = "Pistachio pound cake with caramelized pistachios, glazed with white chocolate and topped with passion fruit pate de fruit and caramelized pistachios. Available for local delivery and pickup only."

desc17 = "Chocolate olive oil cake drizzled with fudge sauce and topped with a chocolate crumble. Available for local delivery and pickup only."

desc18 = "Our 70% dark chocolate bars are made from a mixture of ﬁne aroma cocoa from Ecuador and the Dominican Republic. The fruity proﬁle from the Dominican beans, combined with the roasted notes of the Ecuadorian cacao, create a chocolate of balanced acidity and bitterness, ending in light notes of dry nuts and yellow fruits. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz."

desc19 = "Our 40% milk chocolate bars from Ecuador have warm and complex caramel flavors along with notes of honey, roasted nuts and warm biscuits. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz."

desc20 = "Our 31% single origin white chocolate bars from Ecuador are made from cacao beans and pure cane sugar grown on the coastal plains next to the Pacific Ocean.  They provide a unique, natural, sweet and creamy milk flavor profile. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz."

desc21 = "A combination of our 31% White Chocolate, 40% Milk Chocolate and 70% Dark Chocolate Ecuadorian bars. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz."

desc22 = "Our iced hot chocolate is made from a rich ganache, blending 70% to 80% dark chocolate and milk. As mentioned in the New York Post 'this lasciviously rich libation is for grownups'. The perfect drink for summer! Contains 1/2 gallon or eight, 8 oz. servings."

desc23 = "What better way to let someone know they're thought of than with all of our Kreuther favorites built into one incredible box! Perfect for corporate gifting or indulging a loved one. Assortment contains: Dark Chocolate Salted Caramel Truffles, 6 Pack Dragees, Macadamia Nut Toffee, Assorted Caramels, Assorted bars and our 24-piece Chef's selection box."

desc24 = "Our Classic gift set is an assortment of some of our favorite American inspired flavors. Collection contains: dark chocolate salted caramel truffles, red mixed berry dragee, milk chocolate bar, white chocolate krunchy krispies and an exclusive 6pc assortment with imperial stout (2), salted butter caramel (2), gingerbread and apple strudel."


price01 = 70
price02 = 40
price03 = 40
price04 = 40
price05 = 40
price06 = 18
price07 = 18
price08 = 24
price09 = 46
price10 = 20
price11 = 16
price12 = 18
price13 = 26
price14 = 38
price15 = 22
price16 = 18
price17 = 18
price18 = 55
price19 = 55
price20 = 55
price21 = 55
price22 = 36
price23 = 125
price24 = 75


image01 = "https://res.cloudinary.com/elronia/image/upload/v1604255509/Chocolate%20De%20Boutique/choc01_poises_gj8raf.jpg" 
image02 = "https://res.cloudinary.com/elronia/image/upload/v1604255552/Chocolate%20De%20Boutique/choc02_ubsuku_v9aytr.jpg" 
image03 = "https://res.cloudinary.com/elronia/image/upload/v1604255607/Chocolate%20De%20Boutique/choc03_jdvbtx_ge6dqc.jpg" 
image04 = "https://res.cloudinary.com/elronia/image/upload/v1604255655/Chocolate%20De%20Boutique/choc04_tzatfx_u5octu.jpg" 
image05 = "https://res.cloudinary.com/elronia/image/upload/v1604255702/Chocolate%20De%20Boutique/choc05_xiu9i9_alveld.jpg" 
image06 = "https://res.cloudinary.com/elronia/image/upload/v1604255749/Chocolate%20De%20Boutique/choc06_bq4gmc_qlhi9w.jpg" 
image07 = "https://res.cloudinary.com/elronia/image/upload/v1604255791/Chocolate%20De%20Boutique/choc07_nqfttt_y4cxay.jpg" 
image08 = "https://res.cloudinary.com/elronia/image/upload/v1604255837/Chocolate%20De%20Boutique/choc08_jkeypi_dqjxvf.jpg" 
image09 = "https://res.cloudinary.com/elronia/image/upload/v1604255877/Chocolate%20De%20Boutique/choc09_xy6lg3_crsjwg.jpg" 
image10 = "https://res.cloudinary.com/elronia/image/upload/v1604255916/Chocolate%20De%20Boutique/choc10_azu6gx_utvgdm.jpg" 
image11 = "https://res.cloudinary.com/elronia/image/upload/v1604255965/Chocolate%20De%20Boutique/choc11_djncrh_fsmhr0.jpg" 
image12 = "https://res.cloudinary.com/elronia/image/upload/v1604256271/Chocolate%20De%20Boutique/choc12_z7ly89_dregfy.jpg" 
image13 = "https://res.cloudinary.com/elronia/image/upload/v1604256306/Chocolate%20De%20Boutique/choc13_im1pgb_h4rk1a.png" 
image14 = "https://res.cloudinary.com/elronia/image/upload/v1604256365/Chocolate%20De%20Boutique/choc14_v1smzh_orvowg.jpg" 
image15 = "https://res.cloudinary.com/elronia/image/upload/v1604256416/Chocolate%20De%20Boutique/choc15_ycctjk_higlle.jpg" 
image16 = "https://res.cloudinary.com/elronia/image/upload/v1604256462/Chocolate%20De%20Boutique/choc16_xxcf45_y9xphj.jpg" 
image17 = "https://res.cloudinary.com/elronia/image/upload/v1604256504/Chocolate%20De%20Boutique/choc17_quwptj_j7etvm.jpg" 
image18 = "https://res.cloudinary.com/elronia/image/upload/v1604256542/Chocolate%20De%20Boutique/choc18_aogtfz_yl2bqg.jpg" 
image19 = "https://res.cloudinary.com/elronia/image/upload/v1604256584/Chocolate%20De%20Boutique/choc19_tyxdt6_irekmk.jpg" 
image20 = "https://res.cloudinary.com/elronia/image/upload/v1604256621/Chocolate%20De%20Boutique/choc20_tjq0pk_d58mw6.jpg" 
image21 = "https://res.cloudinary.com/elronia/image/upload/v1604256665/Chocolate%20De%20Boutique/choc21_atrmd7_u28tzc.jpg" 
image22 = "https://res.cloudinary.com/elronia/image/upload/v1604256703/Chocolate%20De%20Boutique/choc22_dfxwhp_huqsja.jpg" 
image23 = "https://res.cloudinary.com/elronia/image/upload/v1604256747/Chocolate%20De%20Boutique/choc23_jvnhhw_udezkc.jpg" 
image24 = "https://res.cloudinary.com/elronia/image/upload/v1604256785/Chocolate%20De%20Boutique/choc24_omkpb4_uljv8v.jpg" 


# Short Array Format

treats = [
{name: name01, description: desc01, price: price01, image: image01},
{name: name02, description: desc02, price: price02, image: image02},
{name: name03, description: desc03, price: price03, image: image03},
{name: name04, description: desc04, price: price04, image: image04},
{name: name05, description: desc05, price: price05, image: image05},
{name: name06, description: desc06, price: price06, image: image06},
{name: name07, description: desc07, price: price07, image: image07},
{name: name08, description: desc08, price: price08, image: image08},
{name: name09, description: desc09, price: price09, image: image09},
{name: name10, description: desc10, price: price10, image: image10},
{name: name11, description: desc11, price: price11, image: image11},
{name: name12, description: desc12, price: price12, image: image12},
{name: name13, description: desc13, price: price13, image: image13},
{name: name14, description: desc14, price: price14, image: image14},
{name: name15, description: desc15, price: price15, image: image15},
{name: name16, description: desc16, price: price16, image: image16},
{name: name17, description: desc17, price: price17, image: image17},
{name: name18, description: desc18, price: price18, image: image18},
{name: name19, description: desc19, price: price19, image: image19},
{name: name20, description: desc20, price: price20, image: image20},
{name: name21, description: desc21, price: price21, image: image21},
{name: name22, description: desc22, price: price22, image: image22},
{name: name23, description: desc23, price: price23, image: image23},
{name: name24, description: desc24, price: price24, image: image24}
]
Treat.create(treats)


# Short Line Format
# treat01 = Treat.create(name: name01, description: desc01, price: price01, image: image01)
# treat02 = Treat.create(name: name02, description: desc02, price: price02, image: image02)
# treat03 = Treat.create(name: name03, description: desc03, price: price03, image: image03)
# treat04 = Treat.create(name: name04, description: desc04, price: price04, image: image04)
# treat05 = Treat.create(name: name05, description: desc05, price: price05, image: image05)
# treat06 = Treat.create(name: name06, description: desc06, price: price06, image: image06)
# treat07 = Treat.create(name: name07, description: desc07, price: price07, image: image07)
# treat08 = Treat.create(name: name08, description: desc08, price: price08, image: image08)
# treat09 = Treat.create(name: name09, description: desc09, price: price09, image: image09)
# treat10 = Treat.create(name: name10, description: desc10, price: price10, image: image10)
# treat11 = Treat.create(name: name11, description: desc11, price: price11, image: image11)
# treat12 = Treat.create(name: name12, description: desc12, price: price12, image: image12)
# treat13 = Treat.create(name: name13, description: desc13, price: price13, image: image13)
# treat14 = Treat.create(name: name14, description: desc14, price: price14, image: image14)
# treat15 = Treat.create(name: name15, description: desc15, price: price15, image: image15)
# treat16 = Treat.create(name: name16, description: desc16, price: price16, image: image16)
# treat17 = Treat.create(name: name17, description: desc17, price: price17, image: image17)
# treat18 = Treat.create(name: name18, description: desc18, price: price18, image: image18)
# treat19 = Treat.create(name: name19, description: desc19, price: price19, image: image19)
# treat20 = Treat.create(name: name20, description: desc20, price: price20, image: image20)
# treat21 = Treat.create(name: name21, description: desc21, price: price21, image: image21)
# treat22 = Treat.create(name: name22, description: desc22, price: price22, image: image22)
# treat23 = Treat.create(name: name23, description: desc23, price: price23, image: image23)
# treat24 = Treat.create(name: name24, description: desc24, price: price24, image: image24)


# Long Format Seed Data
# treat01 = Treat.create(name: "Signature Chef’s Selection", description: "Our chef's curated selection of 24 chocolates is the ultimate expression of our craftsmanship and experience. This collection combines classic American and seasonal flavors with our time-tested French techniques. We carefully select our ingredients for their unique flavors and characteristics, with the intention of evoking a memory and telling a story. Flavors contain: Tahitian vanilla, gingerbread, salted butter caramel, mint, honey saffron, kumaru, banana peanut, Mexican hot chocolate, oatmeal cookie, Cherry Cola vanilla.", price: 70, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955504/Chocolat/choc01_poises.jpg")

# treat02 = Treat.create(name: "Dark Chocolate Salted Caramel Truffles", description: "Our salted caramel dark chocolate ganache is coated in a thin dark chocolate shell, then dusted with cocoa powder. Each box contains 18 truffles.", price: 40, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955504/Chocolat/choc02_ubsuku.jpg")

# treat03 = Treat.create(name: "White Chocolate Strawberry Truffles", description: "Inspired by the taste of fresh strawberries! Our strawberry white chocolate ganache is coated in a thin layer of white chocolate, then dusted with a strawberry powdered sugar. Each box contains 18 truffles.", price: 40, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955504/Chocolat/choc03_jdvbtx.jpg")

# treat04 = Treat.create(name: "Fruity Bon Bon Collection - 12 Piece", description: "An artistic and deeply flavorful assortment of milk chocolate enrobed domes featuring a decadent combination of three flavors; Peach Melba, Coconut Roasted Pineapple, & Key Lime.", price: 40, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955504/Chocolat/choc04_tzatfx.jpg")

# treat05 = Treat.create(name: "Tropical Bon Bon Collection", description: "Whimsical and luscious, this combination of macaron shaped chocolates include three sophisticated flavors: Mojito, Kiwi Lemongrass, and 10-Flavor Yogurt.", price: 40, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955504/Chocolat/choc05_xiu9i9.jpg")

# treat06 = Treat.create(name: "Krunchy Krispy - Dark", description: "Crunchy, caramelized almonds and crispy rice cereal are blended with candied citrus and gingerbread spices, then covered in dark chocolate to create these irresistible, bite size confections. Incredibly unique and addictive!", price: 18, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955504/Chocolat/choc06_bq4gmc.jpg")

# treat07 = Treat.create(name: "Krunchy Krispy - Milk", description: "Crunchy, caramelized almonds and crispy rice cereal are covered with milk chocolate containing notes of caramel to create these irresistible, bite size confections.  Incredibly unique and addictive!", price: 18, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955504/Chocolat/choc07_nqfttt.jpg")

# treat08 = Treat.create(name: "Dragee Yogurt Collection", description: "Perfectly toasted almonds coated in white chocolate and yogurt. These bite size crunchy snacks are great for sharing. Three explosive flavors: Mixed Berry, Mango Passion Fruit and White Chocolate. Total product weight: 8.4 oz.", price: 24, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955505/Chocolat/choc08_jkeypi.jpg")

# treat09 = Treat.create(name: "Dragee Collection", description: "Perfectly toasted almonds enrobed in varieties of chocolate to create explosively crunchy bites. Each flavor is individually packaged, making it perfect for sharing. The truly addictive flavor profiles include: Mixed Berry Yogurt, Mango Passion Fruit Yogurt, White Chocolate Yogurt, Black Forest, Pistachio and Almond Hazelnut Praline. Total product weight: 16.8 oz.", price: 46, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955505/Chocolat/choc09_xy6lg3.jpg")

# treat10 = Treat.create(name: "Macadamia Nut Toffee", description: "The ultimate treat of house made English style toffee, combined with slow-roasted chunks of premium macadamia nuts, covered in dark chocolate.", price: 20, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955505/Chocolat/choc10_azu6gx.jpg")

# treat11 = Treat.create(name: "Assorted Soft Caramels", description: "Each batch of caramel is made with care — handmade, hand cut and hand wrapped. We use only pure ingredients, delivering the most exquisite burst of flavor. Flavors include: mixed berry, salted caramel, chocolate, tropical fruit, pineapple lime and apple pear.", price: 16, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955506/Chocolat/choc11_djncrh.jpg")

# treat12 = Treat.create(name: "Hazelnut Spread", description: "70% dark chocolate is combined with hazelnuts from southern Italy and a touch of fleur de sel, creating this irresistibly creamy house made hazelnut spread. Available in single and 4-Pack size. Each jar weighs 6 oz.", price: 18, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955505/Chocolat/choc12_z7ly89.jpg")

# treat13 = Treat.create(name: "Sunrise Hot Chocolate Tin", description: "Our uniquely crafted house mix contains real chunks of dark, milk and white chocolate. It's presented in our signature Kreuther tin, perfect for gifting. Product weight: 14 oz.", price: 26, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955509/Chocolat/choc13_im1pgb.png")

# treat14 = Treat.create(name: "Cheesecake Macaron", description: "The perfect union of a New York cheesecake and a French macaron. Our airy almond shells are handcrafted in small batches to recreate classic French technique and filled with creamy modern flavors for a taste of New York. Five cheesecake filled flavors: mango passion fruit, pistachio, salted caramel, mixed berry and original cheesecake (contains gluten). The sixth flavor is of course chocolate, with our house made signature hazelnut spread. Each package contains: 12 macarons, 2 of each flavor.", price: 38, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955506/Chocolat/choc14_v1smzh.jpg")

# treat15 = Treat.create(name: "Double Chocolate Almond Fudge Cookies", description: "Our rich double chocolate almond fudge cookies are made with dark chocolate, egg whites and toasted almonds, then baked to a crunchy, chewy perfection. 12 cookies, non gluten ingredients.", price: 22, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955506/Chocolat/choc15_ycctjk.jpg")

# treat16 = Treat.create(name: "Pistachio Travel Cake", description: "Pistachio pound cake with caramelized pistachios, glazed with white chocolate and topped with passion fruit pate de fruit and caramelized pistachios. Available for local delivery and pickup only.", price: 18, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955506/Chocolat/choc16_xxcf45.jpg")

# treat17 = Treat.create(name: "Chocolate Travel Cake", description: "Chocolate olive oil cake drizzled with fudge sauce and topped with a chocolate crumble. Available for local delivery and pickup only.", price: 18, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955506/Chocolat/choc17_quwptj.jpg")

# treat18 = Treat.create(name: "70% Dark Chocolate Bars", description: "Our 70% dark chocolate bars are made from a mixture of ﬁne aroma cocoa from Ecuador and the Dominican Republic. The fruity proﬁle from the Dominican beans, combined with the roasted notes of the Ecuadorian cacao, create a chocolate of balanced acidity and bitterness, ending in light notes of dry nuts and yellow fruits. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz.", price: 55, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955507/Chocolat/choc18_aogtfz.jpg")

# treat19 = Treat.create(name: "40% Milk Chocolate Bars", description: "Our 40% milk chocolate bars from Ecuador have warm and complex caramel flavors along with notes of honey, roasted nuts and warm biscuits. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz.", price: 55, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955507/Chocolat/choc19_tyxdt6.jpg")

# treat20 = Treat.create(name: "31% White Chocolate Bars", description: "Our 31% single origin white chocolate bars from Ecuador are made from cacao beans and pure cane sugar grown on the coastal plains next to the Pacific Ocean.  They provide a unique, natural, sweet and creamy milk flavor profile. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz.", price: 55, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602955507/Chocolat/choc20_tjq0pk.jpg")

# treat21 = Treat.create(name: "Assorted Chocolate Bars", description: "A combination of our 31% White Chocolate, 40% Milk Chocolate and 70% Dark Chocolate Ecuadorian bars. 12 Envelopes (24 individual bars total). Each bar weighs 1.8 oz.", price: 55, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602956034/Chocolat/choc21_atrmd7.jpg")

# treat22 = Treat.create(name: "Iced Hot Chocolate", description: "Our iced hot chocolate is made from a rich ganache, blending 70% to 80% dark chocolate and milk. As mentioned in the New York Post "this lasciviously rich libation is for grownups". The perfect drink for summer! Contains 1/2 gallon or eight, 8 oz. servings.", price: 36, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602956035/Chocolat/choc22_dfxwhp.jpg")

# treat23 = Treat.create(name: "Thinking of You Gift Set", description: "What better way to let someone know they're thought of than with all of our Kreuther favorites built into one incredible box! Perfect for corporate gifting or indulging a loved one. Assortment contains: Dark Chocolate Salted Caramel Truffles, 6 Pack Dragees, Macadamia Nut Toffee, Assorted Caramels, Assorted bars and our 24-piece Chef's selection box.", price: 125, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602956035/Chocolat/choc23_jvnhhw.jpg")

# treat24 = Treat.create(name: "Classic Gift Set", description: "Our Classic gift set is an assortment of some of our favorite American inspired flavors. Collection contains: dark chocolate salted caramel truffles, red mixed berry dragee, milk chocolate bar, white chocolate krunchy krispies and an exclusive 6pc assortment with imperial stout (2), salted butter caramel (2), gingerbread and apple strudel.", price: 75, image: "https://res.cloudinary.com/dn1e07eul/image/upload/v1602956035/Chocolat/choc24_omkpb4.jpg")

