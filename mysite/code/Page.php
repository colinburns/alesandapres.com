<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
        $Theme = THEMES_DIR . '/alesandapres/';
        //Requirements::set_combined_files_folder($lifescienceTheme . 'css');
        Requirements::combine_files("styles.all.dist.css", [
            $Theme . "css/font-awesome.min.css",
            $Theme . "css/materialize.min.css",
            $Theme . "css/slick.css",
            $Theme . "css/slick-theme.css",
            $Theme . "css/owl.carousel.css",
            $Theme . "css/owl.theme.css",
            $Theme . "css/owl.transitions.css",
            $Theme . "css/style.css",
            $Theme . "css/venue.css",
            $Theme . "css/brewery.css"
        ]);

        Requirements::set_force_js_to_bottom(true);

        Requirements::combine_files(
            'scripts.all.dist.js', [
                //vendors
                $Theme . 'js/jquery.min.js',
                $Theme . 'js/materialize.min.js',
                $Theme . 'js/slick.min.js',
                $Theme . 'js/owl.carousel.min.js',
                $Theme . 'js/lightbox.min.js',
                $Theme . 'js/custom.js'
            ]
        );
	}

	public function getBreweries() {
	    $Breweries = BreweryPage::get()->filter('ShowInMenus',1)->sort('Title ASC');
	    return $Breweries;
    }
	public function getVenues() {
	    $Venues = VenuePage::get()->filter('ShowInMenus',1);
	    return $Venues;
    }

}