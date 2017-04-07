<?php
class LeaderboardPage extends Page {

	private static $db = array(

	);

}
class LeaderboardPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	public function Leaderboard() {
	    $Beers = Beer::get()->filter('CountStarRating:GreaterThan', 10)->sort('AverageStarRating DESC');
	    return $Beers;
    }

}
