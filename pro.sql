SHOW DATABASES;
USE cleaned_social_media_engagement;
SHOW TABLES;
SELECT * FROM cleaned_social_media_engagement LIMIT 10;
SELECT post_id, platform, topic_category, total_engagement, engagement_rate
FROM cleaned_social_media_engagement
LIMIT 10;
SELECT post_id, platform, topic_category, total_engagement
FROM cleaned_social_media_engagement
WHERE platform = 'Instagram'
LIMIT 10;
SELECT post_id, campaign_phase, platform, engagement_rate
FROM cleaned_social_media_engagement
WHERE campaign_phase = 'Pre-Launch'
LIMIT 10;
SELECT post_id, platform, sentiment_bucket, total_engagement
FROM cleaned_social_media_engagement
WHERE platform = 'YouTube'
AND sentiment_bucket = 'Positive'
LIMIT 10;
SELECT platform, SUM(total_engagement) AS total_platform_engagement
FROM cleaned_social_media_engagement
GROUP BY platform;
SELECT campaign_phase, AVG(engagement_rate) AS avg_engagement_rate
FROM cleaned_social_media_engagement
GROUP BY campaign_phase;
SELECT platform, SUM(total_engagement) AS total_platform_engagement
FROM cleaned_social_media_engagement
GROUP BY platform
ORDER BY total_platform_engagement DESC;
SELECT campaign_phase, AVG(engagement_rate) AS avg_engagement_rate
FROM cleaned_social_media_engagement
GROUP BY campaign_phase
ORDER BY avg_engagement_rate DESC;
