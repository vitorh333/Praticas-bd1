SELECT u1_name, u2_name
FROM (
	SELECT u1.user_id, u1.user_name AS u1_name, u2.user_name AS u2_name
	FROM users u1, users u2, followers f
	WHERE f.user_id_fk = u1.user_id AND f.following_user_id_fk = u2.user_id AND u1.posts < u2.posts
	AND EXISTS(
		SELECT f2.follower_id
		FROM followers f2
		WHERE f2.user_id_fk = u2.user_id AND f2.following_user_id_fk = u1.user_id
	)

	ORDER BY u1.user_id ASC
) AS total
