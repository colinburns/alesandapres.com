<?php
class BreweryPage extends Page {

	private static $db = array(
        'WebsiteURL' => 'Varchar(255)',
        'LogoType' => "Enum('Horizontal,Square', 'Horizontal')"
	);

	private static $has_one = array(
	    'BreweryLogo' => 'Image'
	);

	private static $has_many = array(
	    'Beers' => 'Beer'
	);

	public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab("Root.Main", HeaderField::create('Header1', 'Brewery Details', 2));
        $fields->addFieldsToTab("Root.Main", TextField::create('WebsiteURL', 'Brewery Website URL')->setDescription('Please enter a full URL for this Brewery (including the http://)'));
        $BreweryLogo = new UploadField('BreweryLogo', '<p class="message warning">Minimum width 400px where possible</p>');
        $BreweryLogo->setFolderName('theme-images/brewery-logos');
        $BreweryLogo->setAllowedMaxFileNumber(1);
        $fields->addFieldsToTab("Root.Main", $BreweryLogo);


        $gridFieldConfig = GridFieldConfig::create()->addComponents(
            new GridFieldToolbarHeader(),
            new GridFieldAddNewButton('toolbar-header-right'),
            new GridFieldSortableHeader(),
            new GridFieldDataColumns(),
            new GridFieldPaginator(10),
            new GridFieldEditButton(),
            new GridFieldDeleteAction(),
            new GridFieldDetailForm()
        );

        $gridField = new GridField("Beers", "Beer List", $this->Beers(), $gridFieldConfig);
        $fields->addFieldToTab("Root.Main", $gridField);

        return $fields;
    }

}
class BreweryPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
	    'IncrementStarRating'
	);

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	public function BeerRating($BeerID) {
	    return Session::get('BeerID-'.$BeerID);
    }

	public function IncrementStarRating() {
	    $BeerID = $this->request->postVar('BeerID');
	    $StarRating = $this->request->postVar('StarRating');

	    $Beer = Beer::get()->byID($BeerID);

        if($StarRating == 1){
            $Beer->OneStarRating = $Beer->OneStarRating+1;
            $StarHTML = '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="1"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="2"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="3"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="4"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="5"></i>';
        }elseif($StarRating == 2){
            $Beer->TwoStarRating = $Beer->TwoStarRating+1;
            $StarHTML = '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="1"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="2"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="3"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="4"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="5"></i>';
        }elseif($StarRating == 3){
            $Beer->ThreeStarRating = $Beer->ThreeStarRating+1;
            $StarHTML = '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="1"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="2"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="3"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="4"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="5"></i>';
        }elseif($StarRating == 4){
            $Beer->FourStarRating = $Beer->FourStarRating+1;
            $StarHTML = '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="1"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="2"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="3"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="4"></i>';
            $StarHTML .= '<i class="fa fa-star-o star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="5"></i>';
        }elseif($StarRating == 5){
            $Beer->FiveStarRating = $Beer->FiveStarRating+1;
            $StarHTML = '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="1"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="2"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="3"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="4"></i>';
            $StarHTML .= '<i class="fa fa-star star-rating-complete" data-beer-id="'.$BeerID.'" data-rating-position="5"></i>';
        }
        Session::set('BeerID-'.$BeerID, $StarRating);
        $Beer->write();
        return $StarHTML;
    }

}
