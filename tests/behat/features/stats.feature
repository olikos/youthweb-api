Feature: stats
	In order to see the stats
	As a visitor

Scenario: Viewing the account stats
	When I request "GET /index.php?action=stats&cat=account"
	Then I get a "200" response
	And scope into the "data.attributes" property
	And the response contains 8 items
	And the properties exist:
		"""
		user_total
		user_total_female
		user_total_male
		user_online
		user_online_24h
		user_online_7d
		user_online_30d
		userpics
		"""

Scenario: Viewing the forum stats
	When I request "GET /index.php?action=stats&cat=forum"
	Then I get a "200" response
	And scope into the "data.attributes" property
	And the response contains 3 items
	And the properties exist:
		"""
		authors_total
		threads_total
		posts_total
		"""

Scenario: Viewing the groups stats
	When I request "GET /index.php?action=stats&cat=groups"
	Then I get a "200" response
	And scope into the "data.attributes" property
	And the response contains 2 items
	And the properties exist:
		"""
		groups_total
		users_total
		"""