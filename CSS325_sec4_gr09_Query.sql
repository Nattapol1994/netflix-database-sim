-- Basic Query --

-- 1.Merchandise with Discounts: Retrieve all merchandise items that currently have a discounted price, along with the percentage discount.

SELECT 
    item_name, 
    price, 
    discounted_price, 
    ROUND(((price - discounted_price) / price) * 100, 2) AS discount_percentage
FROM 
    merchandise_item
WHERE 
    discounted_price < price;
    
-- 2.Profiles with Kids’ Restrictions:Find all user profiles designated as kids' profiles, including the associated maturity rating.

SELECT 
    profile_name, 
    username, 
    maturity_rating
FROM 
    profile
WHERE 
    kids_profile_status = 1;
    
    
-- 3.Number of Active Subscriptions:Count the total number of active subscriptions in the database.

SELECT 
    COUNT(subscription_id) AS active_subscriptions
FROM 
    subscription
WHERE 
    termination_date IS NULL;


-- 4.Maximum Downloads for a Single Game:Find the highest number of downloads recorded for any game
SELECT 
    usa.user_name, 
    COUNT(usa.showads_id) AS total_ads_shown
FROM 
    user_shown_ads usa
GROUP BY 
    usa.user_name
ORDER BY 
    total_ads_shown DESC;

-- 5.Coupon Usage Analysis:Determine the number of times each coupon code has been used
SELECT 
    promo_code, 
    COUNT(*) AS usage_count 
FROM 
    order_use_coupon 
GROUP BY 
    promo_code 
ORDER BY 
    usage_count DESC;


-- 6.Daily Ad Skipping Rate:Calculate the percentage of ads skipped on each date

SELECT 
    DATE(show_datetime) AS ad_date, 
    COUNT(CASE WHEN is_skipped = 1 THEN 1 END) * 100.0 / COUNT(*) AS skip_rate 
FROM 
    user_shown_ads 
GROUP BY 
    ad_date 
ORDER BY 
    ad_date ASC;


-- 7. User Activity on Articles:Track the total number of articles viewed by each user.


SELECT 
    username, 
    COUNT(*) AS total_articles_viewed 
FROM 
    user_view_article 
GROUP BY 
    username 
ORDER BY 
    total_articles_viewed DESC 
LIMIT 10;


-- 8.Merchandise Stock Summary:Find the total and average stock quantities for all merchandise items.


SELECT 
    SUM(stock_quantity) AS total_stock, 
    AVG(stock_quantity) AS average_stock 
FROM 
    merchandise_item;



-- 9. Average Ad Duration:Calculate the average duration of all advertisements
SELECT AVG(duration) AS average_duration
FROM ads;



-- 10. Top Performing Advertisements:Identify the most frequently shown ads.

SELECT ads_title, COUNT(*) AS times_shown
FROM user_shown_ads
GROUP BY ads_title
ORDER BY times_shown DESC
LIMIT 5;


-- 11.Content View Count:Determine the most-watched content over time
SELECT content_id, COUNT(*) AS view_count
FROM user_view_content
GROUP BY content_id
ORDER BY view_count DESC
LIMIT 10;



-- 12. Plan Popularity: Determine the most subscribed plans.
SELECT plan_name, COUNT(*) AS subscriber_count
FROM subscription
GROUP BY plan_name
ORDER BY subscriber_count DESC;



-- 13. Count Kids Profiles:Find the total number of profiles marked as kids' profiles.

SELECT COUNT(*) AS total_kids_profiles
FROM profile
WHERE kids_profile_status = 1;



-- 14. Distribution of Apparel Colors:Understand the variety and distribution of colors available for items.

SELECT color, COUNT(*) AS count 
FROM apparel_color 
GROUP BY color
 ORDER BY count DESC;



-- 15.Profiles with PIN Enabled:Count how many profiles have a PIN set.
SELECT COUNT(*) AS profiles_with_pin
FROM profile
WHERE pin IS NOT NULL;


-- 16.Sizes Availability Insights:Determine the availability of different sizes to track inventory trends.
SELECT size, COUNT(*) AS count
FROM apparel_size
GROUP BY size
ORDER BY count DESC;


-- 17.Top Advertisers by Total Ad Duration:Determine the most subscribed plans.

SELECT advertiser, SUM(duration) AS total_ad_duration 
FROM ads GROUP
BY advertiser ORDER BY total_ad_duration DESC;


-- 18.Most Popular Content Maturity Ratings:Determine the count of content entries grouped by their maturity ratings to understand audience preferences

SELECT maturity_rating, COUNT(*) AS content_count
FROM content
GROUP BY maturity_rating
ORDER BY content_count DESC;


-- 19.Highest-Rated Merchandise:Find the average rating for each merchandise item and rank them.
SELECT item_id, AVG(rating) AS average_rating
FROM merchandise_review
GROUP BY item_id
ORDER BY average_rating DESC;


-- 20.User Article Engagement:Count how many times each article has been viewed.
SELECT article_title, COUNT(*) AS view_count
FROM user_view_article
GROUP BY article_title
ORDER BY view_count DESC;


-- 21.Total Stock by Collection Category:Calculate the total stock available for each collection category to identify inventory levels.

SELECT 
    collection_category, 
    SUM(stock_quantity) AS total_stock
FROM 
    merchandise_item
GROUP BY 
    collection_category
ORDER BY 
    total_stock DESC;


-- 22.The Average Price of All Items in a Collection:Find the average item price in each collection category.

SELECT 
    collection_category, 
    AVG(price) AS avg_price
FROM 
    merchandise_item
GROUP BY 
    collection_category
ORDER BY 
    avg_price DESC;



-- 23.Count the Number of Shows by Maturity Rating:This query provides an overview of the count of shows grouped by their maturity ratings.

SELECT 
    maturity_rating,
    COUNT(*) AS show_count
FROM 
    content
GROUP BY 
    maturity_rating
ORDER BY 
    show_count DESC;


-- 24.Number of articles by category:Count the number of articles by category.

SELECT category, COUNT(*) AS article_count 
FROM article_tudum 
GROUP BY category 
ORDER BY article_count DESC;


-- Advance Query --

-- 1.Top-Rated Merchandise Items:Find the top 5 merchandise items with the highest average customer rating.
SELECT mi.item_name, ROUND(AVG(mr.rating), 2) AS average_rating, 
COUNT(mr.review_id) AS total_reviews 
FROM merchandise_item mi 
JOIN merchandise_review mr ON mi.item_id = mr.item_id GROUP BY mi.item_name ORDER BY average_rating DESC, total_reviews DESC LIMIT 5;


-- 2.Game Download Count:Identify how many times each game has been downloaded.

SELECT g.game_name, COUNT(udg.download_id) AS download_count
FROM game g
JOIN user_download_game udg ON g.game_name = udg.game_name
GROUP BY g.game_name
ORDER BY download_count DESC;


-- 3.Top-Selling Merchandise by Revenue:Identify the top 5 merchandise items that generated the most revenue, including their total sales revenue.

SELECT 
    mi.item_name, 
    SUM(o.quantity * mi.price) AS total_revenue
FROM 
    merchandise_item mi
JOIN 
    order_contains_item o ON mi.item_id = o.item_id
GROUP BY 
    mi.item_name
ORDER BY 
    total_revenue DESC
LIMIT 5;


-- 4.Most Popular Games by Downloads:Retrieve the titles of TV shows released in the last 2 years and their series status.

SELECT 
    c.content_title AS tv_show_title, 
    ts.series_status, 
    c.release_date
FROM 
    content c
JOIN 
    tv_show ts ON c.content_id = ts.content_id
WHERE 
    c.release_date >= DATE_ADD(CURRENT_DATE(), INTERVAL -2 YEAR);


-- 5.Retrieve Apparel Colors and Materials:To display all apparel items along with their respective colors and materials, providing a complete overview of available products.

SELECT a.item_id, a.material, ac.color
FROM apparel a
JOIN apparel_color ac ON a.item_id = ac.item_id;


-- 6.Find all apparel items available in "Black" color.:To identify all apparel items that are available in the "Black" color, useful for targeted inventory queries or promotional campaigns.

SELECT a.item_id, a.material
FROM apparel a
JOIN apparel_color ac ON a.item_id = ac.item_id
WHERE ac.color = 'Black';


-- 7.List apparel items and sizes where the material is 'Organic Cotton'.:To list all apparel items made from "Organic Cotton" along with their available sizes, useful for eco-conscious customer segments.

SELECT a.item_id, a.material, s.size
FROM apparel a
JOIN apparel_size s ON a.item_id = s.item_id
WHERE a.material = 'Organic Cotton';


-- 8.List All Apparel Items with Color and Size:Identify ads that relate to articles (via content IDs or similar relationships).

SELECT ap.item_id, ap.material, ac.color, asz.size
FROM apparel ap
JOIN apparel_color ac ON ap.item_id = ac.item_id
JOIN apparel_size asz ON ap.item_id = asz.item_id;



-- 9.Most popular TV show by views:Identify the TV show with the most views in descending order.

SELECT c.content_title, COUNT(v.viewcontent_id) AS view_count
FROM tv_show t
JOIN user_view_content v ON t.content_id = v.content_id
JOIN content c ON  t.content_id = c.content_id
GROUP BY t.content_id
ORDER BY view_count DESC;


-- 10.Users Who Viewed Content Across Multiple Dates:List users who viewed content on more than one distinct date.

SELECT v.username, COUNT(DISTINCT v.content_view_date) AS view_dates
FROM user_view_content v
GROUP BY v.username
HAVING view_dates > 1;



-- 11.Users Who Interacted with Content or Games:Identify all users who either viewed content or downloaded games.

SELECT username FROM user_view_content
UNION
SELECT username FROM user_download_game;


-- 12.Gender Percentage of Viewers On Each Content:Display the gender percentage of viewers on each content. Note that only users subscribed to ad-enabled plans will have their gender data available.

SELECT 
    c.content_title,
    ROUND(SUM(CASE WHEN ua.gender = 'M' THEN 1 ELSE 0 END) * 100.0 / COUNT(ua.username), 2) AS male_percentage,
    ROUND(SUM(CASE WHEN ua.gender = 'F' THEN 1 ELSE 0 END) * 100.0 / COUNT(ua.username), 2) AS female_percentage
FROM 
    user_view_content uvc
JOIN 
    user_account ua ON uvc.username = ua.username
JOIN 
    content c ON uvc.content_id = c.content_id
WHERE 
    ua.gender IS NOT NULL
GROUP BY 
    c.content_title
ORDER BY 
    c.content_title;



-- 13.Find Advertisers Whose Ads Were Shown to Users: Determine which advertisers reached users through their ad campaigns.

SELECT DISTINCT a.advertiser, u.user_name
FROM ads a
JOIN user_shown_ads u ON a.ads_title = u.ads_title;


-- 14.Find Drinkware Items Ordered and Their Sizes:Extract detailed information on ordered drinkware items for inventory or sales analysis.

SELECT mi.item_name, d.capacity, d.upper_diameter, d.bottom_diameter
FROM merchandise_item mi
JOIN drinkware d ON mi.item_id = d.item_id
JOIN order_contains_item oci ON mi.item_id = oci.item_id;


-- 15.List All Directors for Content in the ‘Action’ Genre:Identify directors associated with a particular genre for genre-specific promotions or trends analysis.

SELECT cd.director, g.genre_name
FROM content_director cd
JOIN genre_contain_content gc ON cd.content_id = gc.content_id
JOIN genre g ON gc.genre_id = g.genre_id
WHERE g.genre_name = 'Action';



-- 16.Display Users Who Subscribed to Specific Plans:Link user accounts to their subscription details to understand plan distribution and revenue streams.

SELECT u.username, s.plan_name, p.monthly_price
FROM user_account u
JOIN subscription s ON u.username = s.username
JOIN plan p ON s.plan_name = p.plan_name;


-- 17.Advertisers with Most Ads Shown:Identify advertisers whose ads were shown most frequently to users.
SELECT a.advertiser, COUNT(usa.ads_title) AS ads_shown_count
FROM ads a
JOIN user_shown_ads usa ON a.ads_title = usa.ads_title
GROUP BY a.advertiser
ORDER BY ads_shown_count DESC;


-- 18.Top 5 Rated Merchandise Items:Find the top 5 highest-rated merchandise items based on user reviews.

SELECT 
    mi.collection_category,
    SUM(mi.price) AS total_revenue
FROM 
    merchandise_item mi
JOIN 
    merchandise_order mo ON mi.item_id = mo.order_id
WHERE 
    mo.status = 'completed'
GROUP BY 
    mi.collection_category
ORDER BY 
    total_revenue DESC;

-- 19.Revenue from Discounted Merchandise:Calculate the total revenue generated from merchandise sold at discounted prices.
SELECT SUM(oi.quantity * mi.discounted_price) AS discounted_revenue
FROM order_contains_item oi
JOIN merchandise_item mi ON oi.item_id = mi.item_id
WHERE mi.discounted_price IS NOT NULL;


-- 20.Total View Count of Each Genre:List the genres and the total view count under each one.

SELECT gc.genre_name, COUNT(uvc.content_id) AS view_count
FROM user_view_content uvc
JOIN genre_contain_content gcc ON uvc.content_id = gcc.content_id
JOIN genre gc ON gcc.genre_id = gc.genre_id
GROUP BY gc.genre_name
ORDER BY view_count DESC;


-- 21.Active Subscriptions by Plan:Count the number of active subscriptions for each plan and the total revenue from those subscriptions.

SELECT 
    p.plan_name, 
    COUNT(s.subscription_id) AS active_subscriptions, 
    SUM(p.monthly_price) AS total_monthly_revenue
FROM 
    plan p
JOIN 
    subscription s ON p.plan_name = s.plan_name
WHERE 
    s.termination_date IS NULL OR s.termination_date > CURRENT_DATE()
GROUP BY 
    p.plan_name
ORDER BY 
    active_subscriptions DESC;


-- 22.Find the most-watched maturity rating category:To determine the most-watched maturity rating category based on user viewing data

SELECT c.maturity_rating, 
COUNT(uvc.viewcontent_id) 
AS total_views FROM content 
AS c JOIN user_view_content 
AS uvc ON c.content_id = uvc.content_id 
GROUP BY c.maturity_rating 
ORDER BY total_views DESC LIMIT 1;


-- 23. Find the total number of views for each piece of content:To identify the total number of views for each piece of content, providing insights into content performance and popularity.

SELECT c.content_title, 
COUNT(uvc.viewcontent_id) AS total_views
FROM content AS c
LEFT JOIN user_view_content AS uvc ON c.content_id = uvc.content_id
GROUP BY c.content_title
ORDER BY total_views DESC;


-- 24.The number of cast members on each content title:To determine the number of cast members associated with each content title

SELECT c.content_title, 
COUNT(uvc.viewcontent_id) AS total_views
FROM content AS c
LEFT JOIN user_view_content AS uvc ON c.content_id = uvc.content_id
GROUP BY c.content_title
ORDER BY total_views DESC;















































































    
    