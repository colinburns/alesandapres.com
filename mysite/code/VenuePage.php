<?php
class VenuePage extends Page {

	private static $db = array(
        'GoogleMapCode' => 'Text',
        'LogoType' => "Enum('Horizontal,Square', 'Horizontal')"
	);

	private static $has_one = array(
	    'VenueLogo' => 'Image'
	);

	public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab("Root.Main", HeaderField::create('Header1', 'Venue Details', 2));
        $fields->addFieldsToTab("Root.Main", TextareaField::create('GoogleMapCode', 'Google Map Code')->setDescription('Please copy and paste in the embed code from Google.'));
        $fields->addFieldsToTab("Root.Main", DropdownField::create('LogoType', 'Logo Type', array('Horizontal'=>'Horizontal', 'Square'=>'Square'))->setDescription('Please select whether this logo is a SQUARE or if it is a Horizontal Logo.'));
        $VenueLogo = new UploadField('VenueLogo', '<p class="message warning">Minimum width 400px where possible</p>');
        $VenueLogo->setFolderName('theme-images/venue-logos');
        $VenueLogo->setAllowedMaxFileNumber(1);
        $fields->addFieldsToTab("Root.Main", $VenueLogo);

        return $fields;
    }

}
class VenuePage_Controller extends Page_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
